---
ns: PED
---
## REGISTER_PEDHEADSHOT

```c
// 0x4462658788425076 0xFFE2667B
int REGISTER_PEDHEADSHOT(Ped ped);
```

```
gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
```

## Parameters
* **ped**: 

## Return value
The Pedheadshot handle.

## Examples
```lua
CreateThread(function()
    -- Get the ped headshot image.
    local handle = RegisterPedheadshot(PlayerPedId())
    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do
        Wait(0)
    end
    local txd = GetPedheadshotTxdString(handle)

    -- Add the notification text, the more text you add the smaller the font
    -- size will become (text is forced on 1 line only), so keep this short!
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName("Headshot")

    -- Draw the notification
    DrawNotificationAward(txd, txd, 200, 0, "FM_GEN_UNLOCK")

    -- Cleanup after yourself!
    UnregisterPedheadshot(handle)
end)
```
