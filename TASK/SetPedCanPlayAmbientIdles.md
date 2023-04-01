---
ns: TASK
aliases: ["0x8FD89A6240813FD0"]
---
## SET_PED_CAN_PLAY_AMBIENT_IDLES

```c
// 0x8FD89A6240813FD0 0xB5AD044E
void SET_PED_CAN_PLAY_AMBIENT_IDLES(Ped ped, BOOL p1, BOOL p2);
```

Disables the idle animation that starts playing when the player ped has been standing still for a few seconds. Has to be called every frame. Does not work if `p1` and/or `p2` are `false`, both parameters have to be `true`.

```lua
while true do
    SetPedCanPlayAmbientIdles(PlayerPedId(), true, true)
    Citizen.Wait(0)
end
```

## Parameters
* **ped**: 
* **p1**: 
* **p2**: 

