---
ns: GRAPHICS
aliases: ["0x29280002282F1928", "_DRAW_SPRITE_POLY"]
---
## DRAW_TEXTURED_POLY

```c
// 0x29280002282F1928
void DRAW_TEXTURED_POLY(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, int red, int green, int blue, int alpha, char* textureDict, char* textureName, float u1, float v1, float w1, float u2, float v2, float w2, float u3, float v3, float w3);
```

This native draws a textured polygon between three vectors in the game world. It's commonly utilized for rendering deadline trailing lights, with additional details available in the `deadline.ytd` file. UVW mapping details (u,v,w parameters) can be found on various internet resources. This native is specifically used for drawing textured polygons on the screen, where UV coordinates define the texture mapping and color/alpha parameters define the appearance of the polygon. This native should be called every frame for continuous rendering.

```
NativeDB Introduced: v877
```

## Parameters
* **x1**: The x-coordinate of the first vector.
* **y1**: The y-coordinate of the first vector.
* **z1**: The z-coordinate of the first vector.
* **x2**: The x-coordinate of the second vector.
* **y2**: The y-coordinate of the second vector.
* **z2**: The z-coordinate of the second vector.
* **x3**: The x-coordinate of the third vector.
* **y3**: The y-coordinate of the third vector.
* **z3**: The z-coordinate of the third vector.
* **red**: The red color component of the polygon (0 - 255).
* **green**: The green color component of the polygon (0 - 255).
* **blue**: The blue color component of the polygon (0 - 255).
* **alpha**: The alpha value of the polygon (0 - 255).
* **textureDict**: The name of the texture dictionary.
* **textureName**: The name of the texture.
* **u1**: The u-coordinate of the first UV mapping.
* **v1**: The v-coordinate of the first UV mapping.
* **w1**: The w-coordinate of the first UV mapping.
* **u2**: The u-coordinate of the second UV mapping.
* **v2**: The v-coordinate of the second UV mapping.
* **w2**: The w-coordinate of the second UV mapping.
* **u3**: The u-coordinate of the third UV mapping.
* **v3**: The v-coordinate of the third UV mapping.
* **w3**: The w-coordinate of the third UV mapping.