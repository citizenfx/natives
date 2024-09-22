---
ns: PED
---
## SET_PED_TO_RAGDOLL_WITH_FALL

```c
// 0xD76632D99E4966C8 0xFA12E286
BOOL SET_PED_TO_RAGDOLL_WITH_FALL(Ped ped, int minTime, int maxTime, int nFallType, float x, float y, float z, float fGroundHeight, float grab1X, float grab1Y, float grab1Z, float grab2X, float grab2Y, float grab2Z);
```

```cpp
enum eNMFallType {
    TYPE_FROM_HIGH = 0,
    TYPE_OVER_WALL = 1,
    TYPE_DOWN_STAIRS = 2,
    TYPE_DIE_TYPES = 3,
    TYPE_DIE_FROM_HIGH = 4,
    TYPE_DIE_OVER_WALL = 5,
    TYPE_DIE_DOWN_STAIRS = 6
}
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
* **minTime**:
* **maxTime**:
* **nFallType**:
* **x**: 
* **y**: 
* **z**: 
* **fGroundHeight**:
* **grab1X**:
* **grab1Y**:
* **grab1Z**:
* **grab2X**:
* **grab2Y**:
* **grab2Z**:

## Return value
