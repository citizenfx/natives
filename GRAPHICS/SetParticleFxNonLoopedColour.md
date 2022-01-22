---
ns: GRAPHICS
---
## SET_PARTICLE_FX_NON_LOOPED_COLOUR

```c
// 0x26143A59EF48B262 0x7B689E20
void SET_PARTICLE_FX_NON_LOOPED_COLOUR(float r, float g, float b);
```

Changes the colour of the particle effect that will be drawn next. The particle can be networked or non-networked, but it must be non-looped for this native to work.

The colour parameters accept RGB values on a scale from 0.0 to 1.0, therefore RGB values that follow the standard 0-255 scale can be easily used dividing said value by 255.

## Parameters
* **r**: The red component of the particle's colour, on a scale from 0.0 to 1.0.
* **g**: The green component of the particle's colour, on a scale from 0.0 to 1.0.
* **b**: The blue component of the particle's colour, on a scale from 0.0 to 1.0.
