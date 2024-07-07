---
ns: TASK
aliases: ["0x8FD89A6240813FD0"]
---
## SET_PED_CAN_PLAY_AMBIENT_IDLES

```c
// 0x8FD89A6240813FD0 0xB5AD044E
void SET_PED_CAN_PLAY_AMBIENT_IDLES(Ped ped, BOOL bDisableIdleAnims, BOOL bStopCurrentAnim);
```

Disables the idle animation that starts playing when the player ped has been standing still for a few seconds. Has to be called every frame. Native does not sync over network (you have to call it on each client for all active player peds).

## Parameters
* **ped**: Ped index.
* **bDisableIdleAnims**: If true, prevents a ped from playing an idle animation this frame.
* **bStopCurrentAnim**: If true and the ped is playing an idle animation, the clip is stopped.

## Examples
```lua
while true do
    SetPedCanPlayAmbientIdles(PlayerPedId(), true, true)
    Citizen.Wait(0)
end
```
