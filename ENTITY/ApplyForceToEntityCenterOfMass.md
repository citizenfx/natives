---
ns: ENTITY
---
## APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS

```c
// 0x18FF00FC7EFF559E 0x28924E98
void APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(Entity entity, int forceType, float x, float y, float z, BOOL p5, BOOL isDirectionRel, BOOL isForceRel, BOOL p8);
```

```
Applies a force to the specified entity.
**List of force types (p1)**:
public enum ForceType
{
    MinForce = 0,
    MaxForceRot = 1,
    MinForce2 = 2,
    MaxForceRot2 = 3,
    ForceNoRot = 4,
    ForceRotPlusForce = 5
}
Research/documentation on the gtaforums can be found here https://gtaforums.com/topic/885669-precisely-define-object-physics/) and here https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/.
p6/relative - makes the xyz force not relative to world coords, but to something else
p7/highForce - setting false will make the force really low
```

## Parameters
* **entity**: 
* **forceType**: 
* **x**: 
* **y**: 
* **z**: 
* **p5**: 
* **isDirectionRel**: 
* **isForceRel**: 
* **p8**: 

