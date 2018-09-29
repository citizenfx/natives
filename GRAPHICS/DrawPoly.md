---
ns: GRAPHICS
---
## DRAW_POLY

```c
// 0xAC26716048436851 0xABD19253
void DRAW_POLY(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, int red, int green, int blue, int alpha);
```

```
x/y/z - Location of a vertex (in world coords), presumably.  
----------------  
x1, y1, z1     : Coordinates for the first point  
x2, y2, z2     : Coordinates for the second point  
x3, y3, z3     : Coordinates for the third point  
r, g, b, alpha : Color with RGBA-Values  
Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).  
But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.  
I recommend using a predefined function to call this.  
[VB.NET]  
Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)  
    [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)  
End Sub  
[C#]  
public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)  
{  
    Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);  
}  
BTW: Intersecting triangles are not supported: They overlap in the order they were called.  
```

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
* **red**: 
* **green**: 
* **blue**: 
* **alpha**: 

