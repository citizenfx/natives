---
ns: GRAPHICS
---
## START_PARTICLE_FX_NON_LOOPED_AT_COORD

```c
// 0x25129531F77B9ED3 0xDD79D679
int START_PARTICLE_FX_NON_LOOPED_AT_COORD(char* effectName, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis);
```

```
GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);  
Axis - Invert Axis Flags  
list: pastebin.com/N9unUFWY  
-------------------------------------------------------------------  
C#  
Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.  
char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc  
float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates  
float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.  
float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f  
bool xaxis, yaxis, zaxis = To bool the axis values.  
example:  
Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);  
```

## Parameters
* **effectName**: 
* **xPos**: 
* **yPos**: 
* **zPos**: 
* **xRot**: 
* **yRot**: 
* **zRot**: 
* **scale**: 
* **xAxis**: 
* **yAxis**: 
* **zAxis**: 

## Return value
