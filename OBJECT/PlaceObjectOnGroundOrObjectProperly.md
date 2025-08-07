---
ns: OBJECT
aliases: ["0xD76EEEF746057FD6", "_PLACE_OBJECT_ON_GROUND_PROPERLY_2"]
---
## PLACE_OBJECT_ON_GROUND_OR_OBJECT_PROPERLY

```c
// 0xD76EEEF746057FD6
BOOL PLACE_OBJECT_ON_GROUND_OR_OBJECT_PROPERLY(Object object);
```

Casts a ray downward from the object's position and places the object on the surface it hits (including world surface and objects). Use [`PLACE_OBJECT_ON_GROUND_PROPERLY`](#_0x58A850EAEE20FAA3) to not include objects when determining the surface.

## Parameters
* **object**: The object handle.

## Return value
