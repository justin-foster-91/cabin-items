cabin-items
===========
`cabin-items` is a CodeSpells mod! Learn more at https://codespells.org.

### Installation

Clone this repo

```
cd cabin-items
raco pkg install
raco codespells-install
```

Open up `main.rkt` and adjust the `codespells-workspace` accordingly. Run.

### Including this Rune Collection as a Package

`(require-mod cabin-items)`

This gives you access to `cabin-items:my-mod-lang` which you can combine into your mod's rune lang with `append-rune-langs`.

### Unreal Development

If you want to start up the Unreal project (`/Unreal`), install the following:
* LogCabin Pack: https://www.unrealengine.com/marketplace/en-US/product/log-cabin 
  * Place in: `Plugins/CabinItems/Content/LogCabin`

### Releasing New Content

If you have only changed the Racket code, just push to Github.

If you have changed or added Unreal assets, push to Github and run `raco codespells-release`.
