---
ns: GRAPHICS
---
## SET_PARTICLE_FX_LOOPED_EVOLUTION

```c
// 0x5F0C4B5B1C393BE2 0x1CBC1373
void SET_PARTICLE_FX_LOOPED_EVOLUTION(int ptfxHandle, char* propertyName, float amount, BOOL noNetwork);
```

```
Should be named SET_PARTICLE_FX_LOOPED_PROPERTY. "Evolution" doesn't make much sense...  
--------  
p4 seems to be always 0.  
Usage:  
if (!GRAPHICS::DOES_PARTICLE_FX_LOOPED_EXIST(l_25C7)) {  
      l_25C7 = GRAPHICS::_DDE23F30CC5A0F03("scr_veh_plane_gen_damage", l_8B9, l_25C4, 0.0, 0.0, 0.0, ENTITY::_GET_ENTITY_BONE_INDEX(l_8B9, "exhaust"), 1.0, 0, 0, 0);  
      GRAPHICS::SET_PARTICLE_FX_LOOPED_EVOLUTION(l_25C7, "damage_smoke", 0.5, 0);  
      GRAPHICS::SET_PARTICLE_FX_LOOPED_EVOLUTION(l_25C7, "damage_fire", 0.2, 0);  
      }  
```

## Parameters
* **ptfxHandle**: 
* **propertyName**: 
* **amount**: 
* **noNetwork**: 

