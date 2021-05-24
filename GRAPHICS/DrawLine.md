---
ns: GRAPHICS
---
## DRAW_LINE

```c
// 0x6B7256074AE34680 0xB3426BCC
void DRAW_LINE(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha);
```

```
Draws a depth-tested line from one point to another.
----------------
x1, y1, z1 : Coordinates for the first point
x2, y2, z2 : Coordinates for the second point
r, g, b, alpha : Color with RGBA-Values
I recommend using a predefined function to call this.
[VB.NET]
Public Sub DrawLine(from As Vector3, [to] As Vector3, col As Color)
    [Function].Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, [to].X, [to].Y, [to].Z, col.R, col.G, col.B, col.A)
End Sub
[C#]
public void DrawLine(Vector3 from, Vector3 to, Color col)
{
    Function.Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, to.X, to.Y, to.Z, col.R, col.G, col.B, col.A);
}
```

## Parameters
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 
* **red**: 
* **green**: 
* **blue**: 
* **alpha**: 

