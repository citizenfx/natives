---
ns: STREAMING
aliases: ["0xD8295AF639FD9CB8", "_SWITCH_IN_PLAYER"]
---
## SWITCH_TO_MULTI_SECONDPART

```c
// 0xD8295AF639FD9CB8 0x2349373B
void SWITCH_TO_MULTI_SECONDPART(Ped ped);
```

After using [`SWITCH_TO_MULTI_FIRSTPART`](#_0xAAB3200ED59016BC) , use this native to smoothly return the camera to the player's character.

## Parameters
* **ped**: 

## Examples
```lua
RegisterCommand("switchPlayer", function()
    if IsPlayerSwitchInProgress() then return end
    local ped = PlayerPedId()
    SwitchToMultiFirstPart(ped, 0, 1)
    Citizen.Wait(5000)
    SwitchToMultiSecondPart(ped)
end, false)
```

```js
RegisterCommand("switchPlayer", () => {
    if (IsPlayerSwitchInProgress()) return;
    const ped = PlayerPedId();
    SwitchToMultiFirstPart(ped, 0, 1);
    Delay(5000); // Delay doesn't exist, you have to make it yourself
    SwitchToMultiSecondPart(ped);
}, false);
```

```cs
using static CitizenFX.Core.Native.API;
RegisterCommand("switchPlayer", new Action<int, List<object>, string>(async (user, args, raw) =>
{
    if (IsPlayerSwitchInProgress()) return;
    Ped ped = PlayerPedId();
    SwitchToMultiFirstPart(ped, 0, 1);
    await Delay(5000);
    SwitchToMultiSecondPart(ped);
}), false);
```
