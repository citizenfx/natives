---
ns: AUDIO
aliases: ["0x01BB4D577D38BD9E"]
---
## SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR

```c
// 0x01BB4D577D38BD9E 0xE81FAC68
void SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR(Vehicle vehicle, float damageFactor);
```

Set the audio body damage percentage that this vehicle should use.

This will trigger debris sounds on jump landings, exhaust rattle when coming off the throttle, and louder suspension sounds


## Parameters
* **vehicle**: Vehicle to modify
* **damageFactor**: A value betwen 0.0 (fine) - 1.0 (fully damaged).
