---
ns: GRAPHICS
---
## SET_DRAW_ORIGIN

```c
// 0xAA0008F3BBB8F416 0xE10198D5
void SET_DRAW_ORIGIN(float x, float y, float z, Any p3);
```

Sets the on-screen drawing origin for draw-functions in world coordinates.

The effect can be reset by calling [`CLEAR_DRAW_ORIGIN`](#_0xFF0B610F6BE0D7AF) and is limited to 32 different origins each frame.

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **p3**: 

## Examples
```cs
// From now on, the screen coordinate which displays the given world coordinate on the screen is seen as x=0,y=0.  
Vector3 boneCoord = somePed.GetBoneCoord(Bone.SKEL_Head);  
Function.Call(Hash.SET_DRAW_ORIGIN, boneCoord.X, boneCoord.Y, boneCoord.Z, 0);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, -0.015, 0.013, 0.013, 0.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, -0.015, 0.013, 0.013, 90.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, 0.015, 0.013, 0.013, 270.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, 0.015, 0.013, 0.013, 180.0, 255, 0, 0, 200);  
Function.Call(Hash.CLEAR_DRAW_ORIGIN);  
```
