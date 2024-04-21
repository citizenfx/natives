---
ns: TASK
aliases: ["0x8FD89A6240813FD0"]
---
## SET_PED_CAN_PLAY_AMBIENT_IDLES

```c
// 0x8FD89A6240813FD0 0xB5AD044E
void SET_PED_CAN_PLAY_AMBIENT_IDLES(Ped ped, BOOL disableIdleAnims, BOOL stopCurrentAnim);
```

Prevents a ped from playing ambient idle animations.
This native must be called every frame.

## Parameters
* **ped**: Ped index.
* **disableIdleAnims**: If true, prevents a ped from playing an idle animation this frame.
* **stopCurrentAnim**: If true and the ped is playing an idle animation, the clip is stopped.

