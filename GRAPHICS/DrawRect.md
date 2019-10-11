---
ns: GRAPHICS
---
## DRAW_RECT

```c
// 0x3A618A217E5154F0 0xDD2BFC77
void DRAW_RECT(float x, float y, float width, float height, int r, int g, int b, int a);
```

```
Draws a rectangle on the screen.  
-x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  
-y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)  
-width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)  
-height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)  
-R: Red part of the color. (0-255)  
-G: Green part of the color. (0-255)  
-B: Blue part of the color. (0-255)  
-A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)  
The total number of rectangles to be drawn in one frame is apparently limited to 399.  
```

```
NativeDB Added Parameter 9: BOOL p8
```

## Parameters
* **x**: 
* **y**: 
* **width**: 
* **height**: 
* **r**: 
* **g**: 
* **b**: 
* **a**: 

