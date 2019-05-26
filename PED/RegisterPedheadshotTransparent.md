---
ns: PED
aliases: ["0x953563CE563143AF"]
---
## REGISTER_PEDHEADSHOT_TRANSPARENT

```c
// 0x953563CE563143AF 0x4DD03628
int REGISTER_PEDHEADSHOT_TRANSPARENT(Ped ped);
```

Similar to REGISTER_PEDHEADSHOT but creates a transparent background instead of black.

**Result of the example code:**
[https://i.imgur.com/iHz8ztn.png](https://i.imgur.com/iHz8ztn.png)

## Parameters
* **ped**: A ped handle.

## Return value
The Pedheadshot handle.

## Examples
```lua
CreateThread(function()
    -- Get the ped headshot image.
    local handle = RegisterPedheadshotTransparent(PlayerPedId())
    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do
        Wait(0)
    end
    local txd = GetPedheadshotTxdString(handle)

    -- Add the notification text, the more text you add the smaller the font
    -- size will become (text is forced on 1 line only), so keep this short!
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName("Transparent Headshot")

    -- Draw the notification
    DrawNotificationAward(txd, txd, 200, 0, "FM_GEN_UNLOCK")
    
    -- Cleanup after yourself!
    UnregisterPedheadshot(handle)
end)
```
