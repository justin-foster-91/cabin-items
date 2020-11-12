#lang at-exp racket

(require cabin-items
	 (except-in codespells/lore log))

(define-runtime-path preview-image
                     "images/preview.png")

(define-rune-collection-lore 
  #:name "Cozy Conjurings"
  #:description 
  @md{
  The @b{Cozy Conjurings} Rune Collection was crafted by @b{Shea the Enchantress} during the @b{First Epoch}. Shea spent many moons consumed in the process of perfecting the most comfortable interior settings for her day-to-day enchanting. After her untimely death, the Rune Collection was preserved in perpetuity by her two sons, who built the @b{ Log Cabin of Wishfern}, which still stands to this day.

  The original Collection is housed at the @b{College of Runic Studies}. These are my notes: 
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
      #:description "This rune creates an comfortable armchair."
      )
    (rune-lore
      #:name "Cupboard"
      #:rune (cupboard-rune)
      #:description "This rune creates a small cupboard."
      )
    (rune-lore
      #:name "Barrel"
      #:rune (barrel-rune)
      #:description "This rune creates a large wooden barrel."
      )
    (rune-lore
      #:name "Bed"
      #:rune (bed-rune)
      #:description "This rune creates a rustic bed."
      )
    (rune-lore
      #:name "Lantern"
      #:rune (lantern-rune)
      #:description "This rune creates a small lantern."
      )
    (rune-lore
      #:name "Log"
      #:rune (log-rune)
      #:description "This rune creates a small, rectangular log."
      ))
  #:preview-image preview-image)
