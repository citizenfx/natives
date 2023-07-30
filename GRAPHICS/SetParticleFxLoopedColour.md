---
ns: GRAPHICS
---
## SET_PARTICLE_FX_LOOPED_COLOUR

```c
// 0x7F8F65877F88783B 0x5219D530
void SET_PARTICLE_FX_LOOPED_COLOUR(int ptfxHandle, float r, float g, float b, BOOL p4);
```

## Parameters
* **ptfxHandle**: 
* **r**: range from 0.0 to 1.0
* **g**: range from 0.0 to 1.0
* **b**: range from 0.0 to 1.0
* **p4**: 


only works on some fx's  
p4 = 0

You can use the [inverse lerp](https://www.gamedev.net/articles/programming/general-and-gameplay-programming/inverse-lerp-a-super-useful-yet-often-overlooked-function-r5230/) method to normalize in a range from 0.0 to 1.0 an rgb
