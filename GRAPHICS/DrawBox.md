---
ns: GRAPHICS
---
## DRAW_BOX

```c
// 0xD3A9971CADAC7252 0xCD4D9DD5
void DRAW_BOX(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha);
```

```
x,y,z = start pos  
x2,y2,z2 = end pos  
Draw's a 3D Box between the two x,y,z coords.  
--------------  
Keep in mind that the edges of the box do only align to the worlds base-vectors. Therefore something like rotation cannot be applied. That means this function is pretty much useless, unless you want a static unicolor box somewhere.  
I recommend using a predefined function to call this.  
[VB.NET]  
Public Sub DrawBox(a As Vector3, b As Vector3, col As Color)  
    [Function].Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A)  
End Sub  
[C#]  
public void DrawBox(Vector3 a, Vector3 b, Color col)  
{  
    Function.Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A);  
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

