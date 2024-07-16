---
ns: CAM
aliases: ["0x8F993D26E0CA5E8E", "_CLAMP_GAMEPLAY_CAM_YAW"]
---
## SET_THIRD_PERSON_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE

```c
// 0x8F993D26E0CA5E8E 0x749909AC
cs_type(Any) void SET_THIRD_PERSON_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE(float minimum, float maximum);
```

```
minimum: Degrees between -180f and 180f.
maximum: Degrees between -180f and 180f.
Clamps the gameplay camera's current yaw.
Eg. _CLAMP_GAMEPLAY_CAM_YAW(0.0f, 0.0f) will set the horizontal angle directly behind the player.
```

## Parameters
* **minimum**: 
* **maximum**: 

## Return value
