---
ns: HUD
aliases: ["0xDCFB5D4DB8BF367E", "SET_BLIP_CREW"]
---
## SHOW_CREW_INDICATOR_ON_BLIP

```c
// 0xDCFB5D4DB8BF367E 0xABBE1E45
void SHOW_CREW_INDICATOR_ON_BLIP(Blip blip, BOOL toggle);
```

Enables or disables the blue half circle ![](https://i.imgur.com/iZes9Ec.png) around the specified blip on the left side of the blip. This is used to indicate that the player is in your crew in GTA:O. Color is changeable by using [`SET_BLIP_SECONDARY_COLOUR`](#_0x14892474891E09EB).

To toggle the right side of the circle use: [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#_0x23C3EB807312F01A).

Example code result:
![](https://i.imgur.com/iZ9tNWl.png)

## Parameters
* **blip**: The blip to toggle the half blue circle around the blip on.
* **toggle**: Enables or disables the half blue circle around the blip (on the left side).

## Examples
```lua
local player = 1 -- make sure this is an actual player, dont just use this example code!
local blip = GetBlipFromEntity(GetPlayerPed(player))

-- Toggle the crew display.
ShowCrewIndicatorOnBlip(blip, true)

-- Set the crew circle color.
-- hud color 18 seems to be the closest color to the green crew color from GTA:O.
SetBlipSecondaryColour(blip, GetHudColour(18))
-- Result: https://i.imgur.com/iZ9tNWl.png
```
