---
ns: VEHICLE
aliases: ["0x1F9FB66F3A3842D2"]
---
## SET_VEHICLE_ACT_AS_IF_HIGH_SPEED_FOR_FRAG_SMASHING

```c
// 0x1F9FB66F3A3842D2 0x4D840FC4
void SET_VEHICLE_ACT_AS_IF_HIGH_SPEED_FOR_FRAG_SMASHING(Vehicle vehicle, BOOL actHighSpeed);
```

This native is used to simulate a high-speed impact for a vehicle when it collides with a breakable object (frag). It's particularly useful in scripted sequences where a vehicle is required to break through a barrier but might not actually be moving at a sufficient speed to do so realistically. Note that this setting is temporary and will reset after one frame, so it needs to be called every frame for a lasting effect.

## Parameters
* **vehicle**: The vehicle to be affected by this setting.
* **actHighSpeed**: A boolean flag. Set to `true` to make the vehicle act as if it's at high speed for the current frame