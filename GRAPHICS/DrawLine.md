---
ns: GRAPHICS
---
## DRAW_LINE

```c
// 0x6B7256074AE34680 0xB3426BCC
void DRAW_LINE(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha);
```

This native draws a line between two vectors in the game world. It is typically used for visualizing paths or connections between points. The color of the line is specified by the red, green, and blue parameters, with alpha determining its opacity. This native should be called every frame for continuous rendering.

```
NativeDB Introduced: v323
```

## Parameters
* **x1**: The x-coordinate of the starting point of the line.
* **y1**: The y-coordinate of the starting point of the line.
* **z1**: The z-coordinate of the starting point of the line.
* **x2**: The x-coordinate of the ending point of the line.
* **y2**: The y-coordinate of the ending point of the line.
* **z2**: The z-coordinate of the ending point of the line.
* **red**: The red color component of the line (0 - 255).
* **green**: The green color component of the line (0 - 255).
* **blue**: The blue color component of the line (0 - 255).
* **alpha**: The alpha value of the line (0 - 255).
