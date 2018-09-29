---
ns: GRAPHICS
---
## START_PARTICLE_FX_NON_LOOPED_ON_ENTITY

```c
// 0x0D53A3B8DA0809D2 0x9604DAD4
BOOL START_PARTICLE_FX_NON_LOOPED_ON_ENTITY(char* effectName, Entity entity, float offsetX, float offsetY, float offsetZ, float rotX, float rotY, float rotZ, float scale, BOOL axisX, BOOL axisY, BOOL axisZ);
```

```
Starts a particle effect on an entity for example your player.  
List: pastebin.com/N9unUFWY  
Example:  
C#:  
Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);  
Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE  
however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native  
```

## Parameters
* **effectName**: 
* **entity**: 
* **offsetX**: 
* **offsetY**: 
* **offsetZ**: 
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **scale**: 
* **axisX**: 
* **axisY**: 
* **axisZ**: 

## Return value
