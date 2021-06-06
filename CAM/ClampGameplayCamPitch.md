---
ns: CAM
---
## _CLAMP_GAMEPLAY_CAM_PITCH

```c
// 0xA516C198B7DCA1E1 0xFA3A16E7
cs_type(Any) void _CLAMP_GAMEPLAY_CAM_PITCH(float minimum, float maximum);
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
