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

(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (double apple armchair cupboard barrel bed lantern log cabinet))

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".."))
  
  (once-upon-a-time
   #:world (arena-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))


