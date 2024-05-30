---
ns: AUDIO
aliases: ["0x59E7B488451F4D3A"]
---
## SET_VEHICLE_AUDIO_ENGINE_DAMAGE_FACTOR

```c
// 0x59E7B488451F4D3A 0x23BE6432
void SET_VEHICLE_AUDIO_ENGINE_DAMAGE_FACTOR(Vehicle vehicle, float damageFactor);
```

Sets the audio engine damage factor that this vehicle should use.

This will trigger general engine damage loops, engine knocking sounds, and random fanbelt squealing


## Parameters
* **vehicle**: Vehicle to modify
* **damageFactor**: A value betwen 0.0 (fine) - 1.0 (fully damaged).
