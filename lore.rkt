#lang at-exp racket

(require (except-in codespells/lore log table)
         (only-in codespells append-rune-langs
                             require-mod))

(require-mod cabin-items)

(define-runtime-path preview-image
                     "images/preview.png")

(define-rune-collection-lore 
  #:name "Cozy Conjurings"
  #:description 
  @md{
  The @b{Cozy Conjurings} Rune Collection was crafted by @b{Shea the Enchantress} during the @b{First Epoch}. Shea spent many moons consumed in the process of perfecting the most comfortable interior settings for her day-to-day enchanting. After her untimely death, the Rune Collection was preserved in perpetuity by her two sons, who built the @b{Log Cabin of Wishfern}, which still stands to this day.

  The original Collection is housed at the @b{College of Runic Studies}. These are my notes: 
  }
  #:rune-lores
  (list
    (rune-lore
      #:name "Apple"
      #:rune (apple-rune)
      #:description @md{This rune instantiates a @del{small} massive apple. It is said that @b{Shea the Enchantress'} eldest son, @b{Todor the Great}, loved apple pie.

      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (apple)
         apple-demo.mp4)
      })
    (rune-lore
      #:name "Armchair"
      #:rune (armchair-rune)
      #:description @md{This rune instantiates a comfortable armchair, identical to the one used by @b{Shea the Enchantress}in her old age.

      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (armchair)
         armchair-demo.mp4)
      })
    (rune-lore
      #:name "Cupboard"
      #:rune (cupboard-rune)
      #:description @md{This rune instantiates a small cupboard for keeping a wizard's cabin tidy.

      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (cupboard)
         cupboard-demo.mp4)
      })
    (rune-lore
      #:name "Barrel"
      #:rune (barrel-rune)
      #:description @md{This rune instantiates a large wooden barrel, which the family used to store all their huge apples.

      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (barrel)
         barrel-demo.mp4)
      })
    (rune-lore
      #:name "Bed"
      #:rune (bed-rune)
      #:description @md{This rune instantiates a rustic bed. Very comforting after a long day of enchanting.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (bed)
         bed-demo.mp4)
      })
    (rune-lore
      #:name "Lantern"
      #:rune (lantern-rune)
      #:description @md{This rune instantiates a small lantern, used by @b{Shea the Enchantress} to light her work in the dark hours of the night.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (lantern)
         lantern-demo.mp4)
      })
    (rune-lore
      #:name "Log"
      #:rune (log-rune)
      #:description @md{This rune instantiates a small, rectangular log, good for lighting the fireplace on a cold winter's evening.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (log)
         log-demo.mp4)
      })
    (rune-lore
      #:name "Cabinet"
      #:rune (cabinet-rune)
      #:description @md{This rune instantiates a cabinet. @b{Shea} is known to have said: A tidy cabin is a cozy cabin.

      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (cabinet)
         cabinet-demo.mp4)
      })
    (rune-lore
      #:name "Basket"
      #:rune (basket-rune)
      #:description @md{This rune instantiates a delightful basket. It's not known what these baskets were used for.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (basket)
         basket-demo.mp4)
      })
    (rune-lore
      #:name "BabyChair"
      #:rune (baby-chair-rune)
      #:description @md{This rune instantiates a child-sized chair, used by @b{Shea the Enchantress'} sons in their youth.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (baby-chair)
         baby-chair-demo.mp4)
      })
    (rune-lore
      #:name "Bagel"
      #:rune (bagel-rune)
      #:description @md{This rune instantiates a delicious bagel: a savory treat.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (bagel)
         bagel-demo.mp4)
      })
    (rune-lore
      #:name "Basin"
      #:rune (basin-rune)
      #:description @md{This rune instantiates a metal basin, good for holding a small supply of water.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (basin)
         basin-demo.mp4)
      })
    (rune-lore
      #:name "Broom"
      #:rune (broom-rune)
      #:description @md{This rune instantiates a broom: @b{Shea} was a stickler for tidy cabins.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (broom)
         broom-demo.mp4)
      })
    (rune-lore
      #:name "CoffeePot"
      #:rune (coffee-pot-rune)
      #:description @md{This rune instantiates a coffee pot: important for spell-crafting through late nights and early mornings.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (coffee-pot)
         coffee-pot-demo.mp4)
      })
    (rune-lore
      #:name "Crate"
      #:rune (crate-rune)
      #:description @md{This rune instantiates a wooden crate, so that everything in the cabin has its proper place.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (crate)
         crate-demo.mp4)
      })
    (rune-lore
      #:name "Table"
      #:rune (table-rune)
      #:description @md{This rune instantiates a cabin table, where it is known the family gathered for every meal during spellcrafting season.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (table)
         table-demo.mp4)
      })
    (rune-lore
      #:name "Vase"
      #:rune (vase-rune)
      #:description @md{This rune instantiates a vase for holding a daily selection of flowers that @b{Shea the Enchantress} would craft from magic each morning.
      
      @(rune-code-example
         (cabin-items:my-mod-lang #:with-paren-runes? #t)
         (vase)
         vase-demo.mp4)
      })
    )
  #:preview-image preview.png)
