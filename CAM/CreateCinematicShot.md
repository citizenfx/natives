---
ns: CAM
---
## CREATE_CINEMATIC_SHOT

```c
// 0x741B0129D4560F31 0xAC494E35
void CREATE_CINEMATIC_SHOT(Hash shotType, int durationMS, Entity attachEnt, Entity lookAtEnt);
```


## Parameters
* **shotType**: 
* **durationMS**: 
* **attachEnt**: 
* **lookAtEnt**: 

```
ENUM SHOT_TYPE
	SHOTTYPE_CAMERA_MAN = HASH("CAMERA_MAN_SHOT"),
	SHOTTYPE_HELI_CHASE = HASH("HELI_CHASE_SHOT"),
	SHOTTYPE_VEHICLE_MOUNTED_CAMERA = HASH("SCRIPT_CAR_MOUNTED_SHOT")
ENDENUM
```

