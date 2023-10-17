---
ns: HUD
aliases: ["0x25615540D894B814"]
---

## SET_RADIUS_BLIP_EDGE

```c
// 0x25615540D894B814 0x40E25DB8
void SET_RADIUS_BLIP_EDGE(Blip blip, BOOL toggle);
```

```
Enabling this on a radius blip will make it outline only. See https://imgur.com/a/lNMfySU

Please note that this only works on a **radius** blip, not a normal blip.
```

## Parameters

- **blip**: The actual blip id
- **toggle**: Whether to turn off or on the effect

## Example

Note how this is a radius blip and not a normal blip.

```lua
local coords = GetEntityCoords(PlayerPedId())
local radiusBlip = AddBlipForRadius(coords, 100.0) -- need to have .0
SetBlipColour(radiusBlip, 1)
SetBlipAlpha(radiusBlip, 255)
SetRadiusBlipEdge(radiusBlip, true)
```
