---
ns: PED
---
## SET_PED_TO_RAGDOLL_WITH_FALL

```c
// 0xD76632D99E4966C8 0xFA12E286
BOOL SET_PED_TO_RAGDOLL_WITH_FALL(Ped ped, int time, int p2, int ragdollType, float x, float y, float z, float p7, float p8, float p9, float p10, float p11, float p12, float p13);
```

```
Return variable is never used in R*'s scripts.  
Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.  
x, y, and z are coordinates, most likely to where the ped will fall.  
p7 is probably the force of the fall, but untested, so I left the variable name the same.  
p8 to p13 are always 0f in R*'s scripts.  
(Simplified) Example of the usage of the function from R*'s scripts:  
ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);  
```

## Parameters
* **ped**: 
* **time**: 
* **p2**: 
* **ragdollType**: 
* **x**: 
* **y**: 
* **z**: 
* **p7**: 
* **p8**: 
* **p9**: 
* **p10**: 
* **p11**: 
* **p12**: 
* **p13**: 

## Return value
