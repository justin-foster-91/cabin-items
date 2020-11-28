#lang at-exp codespells

(require cabin-items/mod-info)

(define-classic-rune (double a)
  #:background "blue"
  #:foreground (circle 40 'outline 'red)
  @unreal-js{@(a)
             @(a)})

(define-classic-rune (apple)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/2536010-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Apple"))

(define-classic-rune (armchair)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/2560057-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Armchair"))

(define-classic-rune (cupboard)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/1520935-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Cupboard"))

(define-classic-rune (barrel)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/2385458-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Barrel"))

(define-classic-rune (bed)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/3521265-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Bed"))

(define-classic-rune (lantern)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/2454597-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Lantern"))

(define-classic-rune (log)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/1820156-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Woodlog"))

(define-classic-rune (cabinet)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/179220-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Cabinet"))

(define-classic-rune (basket)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/3612053-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Basket"))

(define-classic-rune (baby-chair)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/3562048-200.png")
  (spawn-mod-blueprint pak-folder mod-name "BabyChair"))

(define-classic-rune (bagel)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/18154-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Bagel"))

(define-classic-rune (basin)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/2120849-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Basin"))

(define-classic-rune (broom)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/3613801-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Broom"))

(define-classic-rune (coffee-pot)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/1085650-200.png")
  (spawn-mod-blueprint pak-folder mod-name "CoffeePot"))

(define-classic-rune (crate)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/1661576-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Crate"))

(define-classic-rune (table)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/59987-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Table"))

(define-classic-rune (vase)
  #:background "blue"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/395404-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Vase"))


(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (double apple armchair cupboard barrel bed lantern log cabinet basket baby-chair bagel basin broom coffee-pot crate table vase))

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".."))
  
  (once-upon-a-time
   #:world (voxel-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))


