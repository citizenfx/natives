---
ns: HUD
aliases: ["0x2B7E9A4EAAA93C89", "_SET_NOTIFICATION_MESSAGE_2"]
---
## END_TEXT_COMMAND_THEFEED_POST_STATS

```c
// 0x2B7E9A4EAAA93C89 0xED130FA1
int END_TEXT_COMMAND_THEFEED_POST_STATS(char* statTitle, int iconEnum, BOOL stepVal, int barValue, BOOL isImportant, char* picTxd, char* picTxn);
```

[List of picture names](https://pastebin.com/XdpJVbHz)


Example result:


![](https://i.imgur.com/SdEZ22m.png)


## Parameters
* **statTitle**: 
* **iconEnum**: 
* **stepVal**: 
* **barValue**: 
* **isImportant**: 
* **picTxd**: 
* **picTxn**: 

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

    -- Add the notification text
    BeginTextCommandThefeedPost("PS_UPDATE")
    AddTextComponentInteger(50)

    -- Set the notification title and progress
    local title = "PSF_STAMINA"
    local p1 = 14
    local lastProgress = 25
    local newProgress = 50
    local unknownBool = false
    EndTextCommandThefeedPostStats(title, p1, newProgress, lastProgress, unknownBool, txd, txd)

    -- Draw the notification
    local showInBrief = true
    local blink = false -- blink doesn't work when using icon notifications.
    EndTextCommandThefeedPostTicker(blink, showInBrief)
    
    -- Cleanup after yourself!
    UnregisterPedheadshot(handle)
end)
```
