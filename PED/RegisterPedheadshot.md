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
* **ped**: The ped you want to take the "headshot" of.

## Return value
It returns a Pedheadshot handle, which can be used by natives such as [`GET_PEDHEADSHOT_TXD_STRING`](#_0xDB4EACD4AD0A5D6B)

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

```js
  // This function gets the ped headshot texture and returns an url which can be used in NUI (written in TypeScript)
  
  export const GetPedHeadShotUrl = (ped: number): Promise<string> => {
    // We return a Promise so we can async await it, because registering the ped headshot takes some time.
    
    return new Promise(async res => {
        const handle = RegisterPedheadshot(ped)
        
        while (!IsPedheadshotReady(handle) || !IsPedheadshotValid(handle)) {
            // This is a custom function, not a native, which just returns a promise that is resolved after the ms specified using the setTimeout function
            await Delay(10)
        }
        
        const txdString = GetPedheadshotTxdString(handle)
        
        // We "unload" the handle as we no longer need it
        UnregisterPedheadshot(handle)
        
        // From forum post: https://forum.cfx.re/t/ped-headshot-to-image/4813157/2
        
        const pictureUrl = `https://nui-img/${txdString}/${txdString}?v=${Date.now()}`
        
        // Finally we resolve the Promise!
        res(pictureUrl)
    })
}
```
