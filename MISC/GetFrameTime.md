---
ns: MISC
---
## GET_FRAME_TIME

```c
// 0x15C40837039FFAF7 0x96374262
float GET_FRAME_TIME();
```

Gets the high precision frame time of the last frame in seconds.

Roughly equivalent to:
```lua
local time1 = GetGameTimer()
Citizen.Wait(0)
local frameTime = (GetGameTimer() - time1) / 1000
```

_note: the example above is way less precise._

## Return value
The frame time (in seconds) of the last frame.

```lua
local frameTime = GetFrameTimer()
--- Prints for example 0.01253530010581 at around 90 FPS
print(frameTime)
print(playerCoords) -- vector3(...)
```
