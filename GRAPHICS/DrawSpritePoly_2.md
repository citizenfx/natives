---
ns: GRAPHICS
aliases: ["0x736D7AA1B750856B"]
---
## _DRAW_SPRITE_POLY_2

```c
// 0x736D7AA1B750856B
void _DRAW_SPRITE_POLY_2(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float red1, float green1, float blue1, int alpha1, float red2, float green2, float blue2, int alpha2, float red3, float green3, float blue3, int alpha3, char* textureDict, char* textureName, float u1, float v1, float w1, float u2, float v2, float w2, float u3, float v3, float w3);
```

Used for drawling Deadline trailing lights, see deadline.ytd 

Each vertex has its own colour that is blended/illuminated on the texture. Additionally, the R, G, and B components are floats that are int-casted internally.

For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.

## Parameters
* **x1**:
* **y1**:
* **z1**:
* **x2**:
* **y2**:
* **z2**:
* **x3**:
* **y3**:
* **z3**:
* **red1**:
* **green1**:
* **blue1**:
* **alpha1**:
* **red2**:
* **green2**:
* **blue2**:
* **alpha2**:
* **red3**:
* **green3**:
* **blue3**:
* **alpha3**:
* **textureDict**: 
* **textureName**: 
* **u1**: 
* **v1**: 
* **w1**: 
* **u2**: 
* **v2**: 
* **w2**: 
* **u3**: 
* **v3**: 
* **w3**: 

