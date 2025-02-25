---
ns: ENTITY
---
## APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS

```c
// 0x18FF00FC7EFF559E 0x28924E98
void APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(Entity entity, int forceType, float x, float y, float z, cs_type(BOOL) int nComponent, BOOL bLocalForce, BOOL bScaleByMass, BOOL bApplyToChildren);
```

Apply a force to an entities center of mass.

## Parameters
* **entity**: The entity handle
* **forceType**: The force type, see [`APPLY_FORCE_TO_ENTITY`](#_0xC5F68BE9613E2D18)
* **x**: The x component of the force to apply
* **y**: The y component of the force to apply
* **z**: The z component of the force to apply
* **nComponent**: Component of the entity to apply the force too. Only matters for breakable or articulated (ragdoll) physics. 0 means the root or parent component
* **bLocalForce**: Specifies whether the force vector passed in is in local or world coordinates. `true` means the force will get automatically transformed into world space before being applied
* **bScaleByMass**: Specifies whether to scale the force by mass
* **bApplyToChildren**: Default `false`. If the force should be applied to any attached children
