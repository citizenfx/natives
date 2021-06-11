---
ns: GRAPHICS
aliases: ["_WORLD3D_TO_SCREEN2D"]
---
## GET_SCREEN_COORD_FROM_WORLD_COORD

```c
// 0x34E82F05DF2974F5 0x1F950E4B
BOOL GET_SCREEN_COORD_FROM_WORLD_COORD(float worldX, float worldY, float worldZ, float* screenX, float* screenY);
```

```
Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)
Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.
For .NET users...
VB:
Public Shared Function World3DToScreen2d(pos as vector3) As Vector2
        Dim x2dp, y2dp As New Native.OutputArgument
        Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)
        Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))

    End Function
C#:
Vector2 World3DToScreen2d(Vector3 pos)
    {
        var x2dp = new OutputArgument();
        var y2dp = new OutputArgument();
        Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);
        return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());
    }
//USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.
Used to be called _WORLD3D_TO_SCREEN2D
I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.
```

## Parameters
* **worldX**: 
* **worldY**: 
* **worldZ**: 
* **screenX**: 
* **screenY**: 

## Return value
