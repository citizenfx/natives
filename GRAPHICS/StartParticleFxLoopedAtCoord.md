---
ns: GRAPHICS
---
## START_PARTICLE_FX_LOOPED_AT_COORD

```c
// 0xE184F4F0DC5910E7 0xD348E3E6
int START_PARTICLE_FX_LOOPED_AT_COORD(char* effectName, float x, float y, float z, float xRot, float yRot, float zRot, float scale, BOOL invertXAxis, BOOL invertYAxis, BOOL invertZAxis, BOOL localOnly);
```

Start a looped particle effect at a world position and orientation.
This should only be used with infinitely looping particle effects.
The particle effect will then start playing and will need to be stopped by calling STOP_PTFX.
The returned id of the particle effect needs to be passed into any other function that needs to be called on it. 

## Parameters
* **effectName**: 
* **x**: the x position to play the particle effect at
* **y**: the y position to play the particle effect at
* **z**: the z position to play the particle effect at
* **xRot**: the x offset rotation of the particle effect
* **yRot**: the y offset rotation of the particle effect
* **zRot**: the z offset rotation of the particle effect
* **scale**: size scale of the effect (default size = 1.0) 
* **invertXAxis**: 
* **invertYAxis**: 
* **invertZAxis**: 
* **localOnly**: 

## Return value
Returns the id of the created particle effect as an int, or 0 if the creation failed.
