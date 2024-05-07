---
ns: GRAPHICS
---
## DRAW_BOX

```c
// 0xD3A9971CADAC7252 0xCD4D9DD5
void DRAW_BOX(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha);
```

This native draws a box between two vectors in the game world. It is typically used for visualizing boundaries or areas of interest. The color of the box is specified by the red, green, and blue parameters, with alpha determining its opacity. This native should be called every frame for continuous rendering.

```
NativeDB Introduced: v323
```


## Parameters
* **x1**: The x-coordinate of the first corner of the box.
* **y1**: The y-coordinate of the first corner of the box.
* **z1**: The z-coordinate of the first corner of the box.
* **x2**: The x-coordinate of the opposite corner of the box.
* **y2**: The y-coordinate of the opposite corner of the box.
* **z2**: The z-coordinate of the opposite corner of the box.
* **red**: The red color component of the box (0 - 255).
* **green**: The green color component of the box (0 - 255).
* **blue**: The blue color component of the box (0 - 255).
* **alpha**: The alpha value of the box (0 - 255).