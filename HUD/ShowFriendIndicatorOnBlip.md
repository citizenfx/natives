---
ns: HUD
aliases: ["0x23C3EB807312F01A", "SET_BLIP_FRIEND"]
---
## SHOW_FRIEND_INDICATOR_ON_BLIP

```c
// 0x23C3EB807312F01A 0x4C8F02B4
void SHOW_FRIEND_INDICATOR_ON_BLIP(Blip blip, BOOL toggle);
```

Highlights a blip by a half cyan circle on the right side of the blip. ![](https://i.imgur.com/FrV9M4e.png) Indicating that that player is a friend (in GTA:O). This color can not be changed.

To toggle the left side (crew member indicator) of the half circle around the blip, use: [`SHOW_CREW_INDICATOR_ON_BLIP`](#_0xDCFB5D4DB8BF367E).


## Parameters
* **blip**: The blip to toggle the half circle on.
* **toggle**: Enables or disables the half circle around the blip (on the right side of the blip).

## Examples
```lua
local player = 1 -- make sure this is an actual player, dont just use this example code!
local blip = GetBlipFromEntity(GetPlayerPed(player))

-- Toggle the friend outline indicator on the blip.
ShowFriendIndicatorOnBlip(blip, true)
```