---
ns: AUDIO
aliases: ["0x01BB4D577D38BD9E"]
---
## SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR

```c
// 0x01BB4D577D38BD9E 0xE81FAC68
void SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR(Vehicle vehicle, float intensity);
```

Vehicle will make a 'rattling' noise when decelerating

## Parameters
* **vehicle**: Vehicle to modify
* **intensity**: A value 0.0 - 1.0. Higher the value, the more likely the vehicle is to make the sound while decelerating
