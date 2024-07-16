---
ns: CAM
aliases: ["0x80C8B1846639BB19", "_SET_CAM_EFFECT"]
---
## SET_CAM_DEATH_FAIL_EFFECT_STATE

```c
// 0x80C8B1846639BB19 0xB06CCD38
void SET_CAM_DEATH_FAIL_EFFECT_STATE(int p0);
```

```
if p0 is 0, effect is cancelled  
if p0 is 1, effect zooms in, gradually tilts cam clockwise apx 30 degrees, wobbles slowly. Motion blur is active until cancelled.  
if p0 is 2, effect immediately tilts cam clockwise apx 30 degrees, begins to wobble slowly, then gradually tilts cam back to normal. The wobbling will continue until the effect is cancelled.  
```

## Parameters
* **p0**: 

