---
ns: HUD
aliases: ["0x77E2DD177910E1CF", "_SET_PLAYER_BLIP_POSITION_THIS_FRAME"]
---
## SET_FAKE_PAUSEMAP_PLAYER_POSITION_THIS_FRAME

```c
// 0x77E2DD177910E1CF 0x54E75C7D
void SET_FAKE_PAUSEMAP_PLAYER_POSITION_THIS_FRAME(float x, float y);
```

Overrides the position of the main player blip for the current frame.

## Parameters
* **x**: X coord of the position.
* **y**: Y coord of the position.

## Examples
```lua
-- Function to check if player is using the map
local function IsPlayerUsingPausemap()
  return IsPauseMenuActive() and GetNumberOfReferencesOfScriptWithNameHash(`pausemenu_map`) > 0
end

Citizen.CreateThread(function()
  while true do
    Wait(0) -- Not using Wait will cause the game to hang.

    if IsPlayerUsingPausemap() and not IsPausemapInInteriorMode() then -- Make sure the player using the map and the map has switched view
      SetFakePausemapPlayerPositionThisFrame(0.0, 0.0) -- Override position
    end
  end
end)
```
