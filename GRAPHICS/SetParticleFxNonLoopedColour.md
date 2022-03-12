---
ns: GRAPHICS
---
## SET_PARTICLE_FX_NON_LOOPED_COLOUR

```c
// 0x26143A59EF48B262 0x7B689E20
void SET_PARTICLE_FX_NON_LOOPED_COLOUR(float r, float g, float b);
```

Only works on some fx's, while on others it might SEEM to work "properly", but the colors can be "strange" or even completly different from what you've expected. Reason for this is that those fx's might already have colors "baked into them" which then start to act as a "mixing palette", resulting in a different color than expected. A hypothetical example of this would be if the fx itself is already full (bright) red (RGB: 1.0, 0.0, 0.0) and you then set the color to (bright) green (RGB: 0.0, 1.0, 0.0), that it MIGHT result in Yellow (RGB: 1.0, 1.0, 0.0).

This doc previously stated that the set color is **NOT** networked, however it does actually turns out to be networked. Tested with all fireworks effects and several other FX effects resulted in colored fx effects on all clients when used in combination with [START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD](#_0xF56B8137DF10135D).
This might however not be the case for all types of particle fx's, so it's recommended to test this thoroughly with multiple clients before releasing your script for example.


## Parameters
* **r**: Red (0.0 - 1.0)
* **g**: Green (0.0 - 1.0)
* **b**: Blue (0.0 - 1.0)
