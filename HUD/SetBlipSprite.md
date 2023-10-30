---
ns: HUD
---
## SET_BLIP_SPRITE

```c
// 0xDF735600A4696DAF 0x8DBBB0B9
void SET_BLIP_SPRITE(Blip blip, int spriteId);
```

Sets the displayed sprite for a specific blip.

There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.

## Parameters
* **blip**: The blip to change.
* **spriteId**: The sprite ID to set.

## Examples
```lua
SetBlipSprite(blip, 588) -- changes `blip` to radar_nhp_orbit
```
