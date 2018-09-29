---
ns: CAM
---
## SET_GAMEPLAY_COORD_HINT

```c
// 0xD51ADCD2D8BC0FB3 0xF27483C9
void SET_GAMEPLAY_COORD_HINT(float x, float y, float z, int duration, int blendOutDuration, int blendInDuration, int unk);
```

```
Example C#:  
Function.Call(Hash.SET_GAMEPLAY_COORD_HINT, position.X, position.Y, position.Z, hintDuration, 1500, 1000, 0);  
The camera look-at is canceled if the user is already panning the camera around.  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **duration**: 
* **blendOutDuration**: 
* **blendInDuration**: 
* **unk**: 

