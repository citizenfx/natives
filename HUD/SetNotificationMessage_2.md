---
ns: HUD
aliases: ["0x2B7E9A4EAAA93C89"]
---
## _SET_NOTIFICATION_MESSAGE_2

```c
// 0x2B7E9A4EAAA93C89 0xED130FA1
int _SET_NOTIFICATION_MESSAGE_2(char* title, int p1, int newProgress, int lastProgress, BOOL p4, char* picName1, char* picName2);
```

```
Example result:

![](https://i.imgur.com/SdEZ22m.png)
```

## Parameters
* **title**: 
* **p1**: 
* **newProgress**: 
* **lastProgress**: 
* **p4**: 
* **picName1**: 
* **picName2**: 

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
    SetNotificationTextEntry("PS_UPDATE")
    AddTextComponentInteger(50)

    -- Set the notification title and progress
    local title = "PSF_STAMINA"
    local p1 = 14
    local lastProgress = 25
    local newProgress = 50
    local unknownBool = false
    SetNotificationMessage_2(title, p1, newProgress, lastProgress, unknownBool, txd, txd)

    -- Draw the notification
    local showInBrief = true
    local blink = false -- blink doesn't work when using icon notifications.
    DrawNotification(blink, showInBrief)
    
    -- Cleanup after yourself!
    UnregisterPedheadshot(handle)
end)
```
