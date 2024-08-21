---
ns: HUD
---
## SET_BLIP_COLOUR

```c
// 0x03D7FB09E75D6B7E 0xBB3C5A41
void SET_BLIP_COLOUR(Blip blip, int color);
```

Sets the color of a blip. The color can also be a hex if you want a color that's not included in the list above.

## Parameters
* **blip**: A blip handle
* **color**: See [blip colors here](https://docs.fivem.net/docs/game-references/blips/#blip-colors)

## Examples
```lua
local coords = GetEntityCoords(PlayerPedId())
local blip = AddBlipForCoord(coords.x, coords.y, coords.z)

SetBlipColour(blip, 1) -- Sets the color to red (see list above)

-- You can also use a hex like so:
SetBlipColour(blip, 0x3A7F3AFF) -- Our custom green
```
