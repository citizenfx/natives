---
ns: ENTITY
---
## IS_ENTITY_IN_ANGLED_AREA

```c
// 0x51210CED3DA1C78A 0x883622FA
BOOL IS_ENTITY_IN_ANGLED_AREA(Entity entity, float originX, float originY, float originZ, float edgeX, float edgeY, float edgeZ, float angle, BOOL p8, BOOL p9, Any p10);
```

```
Creates a spherical cone at origin that extends to surface with the angle specified. Then returns true if the entity is inside the spherical cone  
Angle is measured in degrees.  
These values are constant, most likely bogus:  
p8 = 0, p9 = 1, p10 = 0  
This method can also take two float<3> instead of 6 floats.  
```

## Parameters
* **entity**: 
* **originX**: 
* **originY**: 
* **originZ**: 
* **edgeX**: 
* **edgeY**: 
* **edgeZ**: 
* **angle**: 
* **p8**: 
* **p9**: 
* **p10**: 

## Return value
