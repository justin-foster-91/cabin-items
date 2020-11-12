#lang at-exp racket

(require cabin-items
	 (except-in codespells/lore log))

(define-rune-collection-lore 
  #:name "Cozy Conjurings"
  #:description 
  @md{
      The @b{Cozy Conjurings} Rune Collection contains log cabin items.
  }
  #:rune-lores
  (list
    (rune-lore
      #:name "Apple"
      #:rune (apple-rune)
      #:description @md{This rune creates a @del{small} massive apple.}
      )
    (rune-lore
      #:name "Armchair"
      #:rune (armchair-rune)
      #:description "This rune creates an comfortable armchair. No, you can't sit in it."
      )
    (rune-lore
      #:name "Cupboard"
      #:rune (cupboard-rune)
      #:description "This rune creates a small cupboard for all the cups you don't own."
      ))
  #:preview-image (apple-rune))