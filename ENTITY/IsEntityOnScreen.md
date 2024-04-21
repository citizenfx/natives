---
ns: ENTITY
---
## IS_ENTITY_ON_SCREEN

```c
// 0xE659E47AF827484B 0xC1FEC5ED
BOOL IS_ENTITY_ON_SCREEN(Entity entity);
```

Determines whether the screen position of the specified entity is within the 2D bounds of the screen.

This native will not check if the entity is not visible due to being occluded (for example, behind a wall). To check if a entity is on screen and is not occluded, use [IS_ENTITY_OCCLUDED](#_0xE31C2C72B8692B64).

## Parameters
* **entity**: The entity to check.

## Return value
Returns `true` if the the entity is in between the minimum and maximum values for the 2D screen bound coords; otherwise, `false`.
