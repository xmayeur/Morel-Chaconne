\version "2.17.24"

%%%
%%% Utilities for defining new grobs, grob properties and music event types
%%% (there should be built-in commands to do that in LilyPond)
%%%
#(define (define-grob-type grob-name grob-entry)
   "Define a new grob and add it to `all-grob-definitions', after
scm/define-grobs.scm fashion.
After grob definitions are added, use:

\\layout {
  \\context {
    \\Global
    \\grobdescriptions #all-grob-descriptions
  }
}

to register them."
   (let* ((meta-entry   (assoc-get 'meta grob-entry))
          (class        (assoc-get 'class meta-entry))
          (ifaces-entry (assoc-get 'interfaces meta-entry)))
     (set-object-property! grob-name 'translation-type? list?)
     (set-object-property! grob-name 'is-grob? #t)
     (set! ifaces-entry (append (case class
                                  ((Item) '(item-interface))
                                  ((Spanner) '(spanner-interface))
                                  ((Paper_column) '((item-interface
                                                     paper-column-interface)))
                                  ((System) '((system-interface
                                               spanner-interface)))
                                  (else '(unknown-interface)))
                                ifaces-entry))
     (set! ifaces-entry (uniq-list (sort ifaces-entry symbol<?)))
     (set! ifaces-entry (cons 'grob-interface ifaces-entry))
     (set! meta-entry (assoc-set! meta-entry 'name grob-name))
     (set! meta-entry (assoc-set! meta-entry 'interfaces
                                  ifaces-entry))
     (set! grob-entry (assoc-set! grob-entry 'meta meta-entry))
     (set! all-grob-descriptions
           (cons (cons grob-name grob-entry)
                 all-grob-descriptions))))

#(define-public (define-grob-property symbol type? description)
   "Define a new grob property.
`symbol': the property name
`type?': the type predicate for this property
`description': the type documentation"
  (set-object-property! symbol 'backend-type? type?)
  (set-object-property! symbol 'backend-doc description)
  symbol)

#(defmacro*-public define-music-type (type-name parents #:rest properties)
     "Add a new music type description to `music-descriptions'
and `music-name-to-property-table'.

`type-name': the music type name (a symbol)
`parents': the parent event classes (a list of symbols)
`properties': a (key . value) property set, which shall contain at least
   description and type properties.
"
   (let ((gproperties (gensym "properties")))
     `(let ((,gproperties (list-copy ',properties)))
        ,@(map (lambda (parent)
                `(define-event-class ',(ly:camel-case->lisp-identifier type-name)
                   ',parent))
               parents)
        (set-object-property! ',type-name
                              'music-description
                              (cdr (assq 'description ,gproperties)))
        (set! ,gproperties (assoc-set! ,gproperties 'name ',type-name))
        (set! ,gproperties (assq-remove! ,gproperties 'description))
        (hashq-set! music-name-to-property-table ',type-name ,gproperties)
        (set! music-descriptions
              (cons (cons ',type-name ,gproperties)
                    music-descriptions)))))

%%%
%%% Grob definition
%%%
#(define (head-ornamentation::print me)
   "Prints a HeadOrnamentation grob, on the left or right side of the
note head, depending on the grob direction."
   (let* ((notes (ly:grob-object me 'elements))
          (y-ref (ly:grob-common-refpoint-of-array me notes Y))
          (x-ref (ly:grob-common-refpoint-of-array me notes X))
          (x-ext (ly:relative-group-extent notes x-ref X))
          (y-ext (ly:relative-group-extent notes y-ref Y))
          (staff-position (ly:grob-staff-position (ly:grob-array-ref notes 0)))
          (y-coord (+ (interval-center y-ext)
                      (if (and (eq? (ly:grob-property me 'shift-when-on-line) #t)
                               (memq staff-position '(-4 -2 0 2 4)))
                          0.5
                          0)))
          (text (ly:text-interface::print me))
          (width (/ (interval-length (ly:stencil-extent text X)) 2.0))
          (x-coord (if (= (ly:grob-property me 'direction) LEFT)
                       (- (car x-ext) width)
                       (+ (cdr x-ext) width))))
     (ly:stencil-translate
      text
      (cons
       (- x-coord (ly:grob-relative-coordinate me x-ref X))
       (- y-coord (ly:grob-relative-coordinate me y-ref Y))))))

%% a new grob property (used to shift an ornamentation when the
%% note head is on a staff line)
#(define-grob-property 'shift-when-on-line boolean?
   "If true, then the ornamentation is vertically shifted when
the note head is on a staff line.")

#(define-grob-type 'HeadOrnamentation
  `((font-size . 0)
    (shift-when-on-line . #f)
    (stencil . ,head-ornamentation::print)
    (meta . ((class . Item)
             (interfaces . (font-interface))))))

\layout {
  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
}

%%%
%%% Engraver
%%%
%% The head-ornamentation engraver, with its note-head acknowledger
%% (which add HeadOrnamentation grobs to note heads)
#(define head-ornamentation-engraver
   (make-engraver
    (acknowledgers
     ((note-head-interface engraver note-grob source)
      ;; helper function to create HeadOrnamentation grobs
      (define (make-ornament-grob text direction shift-when-on-line)
        (let ((ornament-grob (ly:engraver-make-grob engraver
                                                    'HeadOrnamentation
                                                    note-grob)))
          ;; use the ornament event text as the grob text property
          (set! (ly:grob-property ornament-grob 'text) text)
          ;; set the grob direction (either LEFT or RIGHT)
          (set! (ly:grob-property ornament-grob 'direction) direction)
          ;; set the shift-when-on-line property using the given value
          (set! (ly:grob-property ornament-grob 'shift-when-on-line)
                shift-when-on-line)
          (ly:pointer-group-interface::add-grob ornament-grob
                                                'elements
                                                note-grob)
          ;; the ornamentation is vertically aligned with the note head
          (set! (ly:grob-parent ornament-grob Y) note-grob)
          ;; compute its font size
          (set! (ly:grob-property ornament-grob 'font-size)
                (+ (ly:grob-property ornament-grob 'font-size 0.0)
                   (ly:grob-property note-grob 'font-size 0.0)))
          ornament-grob))
      ;; When the note-head event attached to the note-head grob has
      ;; ornamentation events among its articulations, then create a
      ;; HeadOrnamentation grob
      (for-each
       (lambda (articulation)
         (if (memq 'head-ornamentation-event
                   (ly:event-property articulation 'class))
             ;; this articulation is an ornamentation => make the grob
             ;; (either on LEFT or RIGHT direction)
             (begin
               (if (markup? (ly:event-property articulation 'left-text))
                   (make-ornament-grob
                    (ly:event-property articulation 'left-text)
                    LEFT
                    (ly:event-property articulation 'shift-when-on-line)))
               (if (markup? (ly:event-property articulation 'right-text))
                   (make-ornament-grob
                   (ly:event-property articulation 'right-text)
                   RIGHT
                   (ly:event-property articulation 'shift-when-on-line))))))
         (ly:event-property (ly:grob-property note-grob 'cause) 'articulations))))))

\layout {
  \context {
    \Voice
    \consists #head-ornamentation-engraver
  }
}

%%%
%%% Event type definition
%%%
#(define-music-type HeadOrnamentationEvent (music-event)
   (description . "Print an ornamentation at a note head side")
   (types . (general-music post-event event head-ornamentation-event)))

trL =
#(make-music 'HeadOrnamentationEvent
   'shift-when-on-line #t
   'left-text #{ \markup\rotate #45 \musicglyph #"scripts.stopped" #})

pinceR =
#(make-music 'HeadOrnamentationEvent
   'shift-when-on-line #f
   'right-text #{ \markup \rotate #10 \fontsize #-3 \musicglyph #"scripts.rcomma" #})

%%%
%%% test
%%%

{ g'2\trL a'\trL g'\pinceR a'\pinceR }
