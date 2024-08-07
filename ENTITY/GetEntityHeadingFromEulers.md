---
ns: ENTITY
aliases: ["0x846BF6291198A71E", "_GET_ENTITY_PHYSICS_HEADING"]
---
## GET_ENTITY_HEADING_FROM_EULERS

```c
// 0x846BF6291198A71E 0x9320E642
float GET_ENTITY_HEADING_FROM_EULERS(Entity entity);
```

Gets the heading of the entity physics in degrees, which tends to be more accurate than just [`GET_ENTITY_HEADING`](#_0xE83D4F9BA2A38914). This can be clearly seen while, for example, ragdolling a ped/player.

## Parameters
* **entity**: The entity to get the heading from.

## Return value
Returns a float representing the entity's heading from eulers.
