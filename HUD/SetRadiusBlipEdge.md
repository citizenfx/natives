---
ns: HUD
aliases: ["0x25615540D894B814"]
---
## SET_RADIUS_BLIP_EDGE

```c
// 0x25615540D894B814 0x40E25DB8
void SET_RADIUS_BLIP_EDGE(Blip blip, BOOL toggle);
```

Enabling this on a radius blip will make it outline only.  
Please note that this only works on a **radius** blip (i.e. one generated using [`ADD_BLIP_FOR_RADIUS`](#_0x46818D79B1F7499A)), not a normal blip.

**Example result:**  
![example-image](https://i.imgur.com/hS6ki7p.png)

## Parameters
* **blip**: The blip handle
* **toggle**: Whether to turn off or on the effect

## Examples
```lua
local coords = GetEntityCoords(PlayerPedId())
local radiusBlip = AddBlipForRadius(coords, 100.0) -- need to have .0
SetBlipColour(radiusBlip, 1)
SetBlipAlpha(radiusBlip, 255)
SetRadiusBlipEdge(radiusBlip, true)
```
