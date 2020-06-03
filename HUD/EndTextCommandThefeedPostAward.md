---
ns: HUD
aliases: ["0xAA295B6F28BD587D","_DRAW_NOTIFICATION_ICON","_DRAW_NOTIFICATION_AWARD"]
---
## END_TEXT_COMMAND_THEFEED_POST_AWARD

```c
// 0xAA295B6F28BD587D 0x02DED2B8
int END_TEXT_COMMAND_THEFEED_POST_AWARD(char* textureDict, char* textureName, int rpBonus, int colorOverlay, char* titleLabel);
```

Shows an "award" notification above the minimap, lua example result:

![](https://i.imgur.com/e2DNaKX.png)



Old description:
```
Example:  
UI::_SET_NOTIFICATION_TEXT_ENTRY("HUNT");  
UI::_0xAA295B6F28BD587D("Hunting", "Hunting_Gold_128", 0, 109, "HUD_MED_UNLKED");  
```

## Parameters
* **textureDict**: The texture dictionary name for the icon on the left.
* **textureName**: The texture name for the icon on the left.
* **rpBonus**: The gained "RP" amount that will be displayed on the right side of the notification.
* **colorOverlay**: Hudcolor overlay that gets applied on top of the notification, conflicts with text/image visibility in most cases if set to something other than 0.
* **titleLabel**: The label that will be displayed at the top of the notification (title).

## Return value
The notification handle.

## Examples
```lua
Citizen.CreateThread(function()
    -- Get the ped headshot image.
    local handle = RegisterPedheadshot(PlayerPedId())
    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do
        Citizen.Wait(0)
    end
    local txd = GetPedheadshotTxdString(handle)

    -- Add the notification text, the more text you add the smaller the font
    -- size will become (text is forced on 1 line only), so keep this short!
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName("You won the match!")

    -- Draw the notification
    EndTextCommandThefeedPostAward(txd, txd, 200, 0, "FM_GEN_UNLOCK")
    
    -- Cleanup after yourself!
    UnregisterPedheadshot(handle)
end)
```