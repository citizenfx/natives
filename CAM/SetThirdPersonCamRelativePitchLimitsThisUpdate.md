---
ns: CAM
aliases: ["0xA516C198B7DCA1E1", "_CLAMP_GAMEPLAY_CAM_PITCH"]
---
## SET_THIRD_PERSON_CAM_RELATIVE_PITCH_LIMITS_THIS_UPDATE

```c
// 0xA516C198B7DCA1E1 0xFA3A16E7
cs_type(Any) void SET_THIRD_PERSON_CAM_RELATIVE_PITCH_LIMITS_THIS_UPDATE(float minimum, float maximum);
```

```
minimum: Degrees between -90f and 90f.
maximum: Degrees between -90f and 90f.
Clamps the gameplay camera's current pitch.
Eg. _CLAMP_GAMEPLAY_CAM_PITCH(0.0f, 0.0f) will set the vertical angle directly behind the player.
```

## Parameters
* **minimum**: 
* **maximum**: 

## Return value
