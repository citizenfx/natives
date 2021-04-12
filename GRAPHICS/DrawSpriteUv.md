---
ns: GRAPHICS
---
## _DRAW_SPRITE_UV

```c
// 0x95812F9B26074726
void _DRAW_SPRITE_UV(char* textureDict, char* textureName, float x, float y, float width, float height, float u1, float v1, float u2, float v2, float heading, int red, int green, int blue, int alpha);
```

Similar to DRAW_SPRITE, but allows to specify the texture coordinates used to draw the sprite.
u1, v1 - texture coordinates for the top-left corner
u2, v2 - texture coordinates for the bottom-right corner

```
NativeDB Introduced: v1868
```

## Parameters
* **textureDict**:
* **textureName**:
* **x**:
* **y**:
* **width**:
* **height**:
* **u1**:
* **v1**:
* **u2**:
* **v2**:
* **heading**:
* **red**:
* **green**:
* **blue**:
* **alpha**:
