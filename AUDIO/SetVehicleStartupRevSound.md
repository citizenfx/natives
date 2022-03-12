---
ns: AUDIO
aliases: ["0xF1F8157B8C3F171C"]
---
## SET_VEHICLE_STARTUP_REV_SOUND

```c
// 0xF1F8157B8C3F171C 0x1C0C5E4C
void SET_VEHICLE_STARTUP_REV_SOUND(Vehicle vehicle, char* p1, char* p2);
```

Overrides the vehicle's startup engine rev sound.

2 calls found in the b617d scripts:

```cpp
AUDIO::SET_VEHICLE_STARTUP_REV_SOUND(l_A42, "Franklin_Bike_Rev", "BIG_SCORE_3A_SOUNDS");  
AUDIO::SET_VEHICLE_STARTUP_REV_SOUND(l_166, "Trevor_Revs_Off", "PALETO_SCORE_SETUP_SOUNDS");
```

## Parameters
* **vehicle**: 
* **p1**: 
* **p2**: 

