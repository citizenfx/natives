---
ns: ENTITY
---
## SET_ENTITY_HEALTH

```c
// 0x6B76DC1F3AE6E6A3 0xFBCD1831
void SET_ENTITY_HEALTH(Entity entity, int health);
```

When setting health for a player ped, the game will clamp the health value to ensure it does not exceed the maximum health. This maximum health can be retrieved by calling [`GET_PED_MAX_HEALTH`](#_0x4700A416E8324EF3). It can also be modified by calling [`SET_PED_MAX_HEALTH`](#_0xF5F6378C4F3419D3).

When setting the health for non-player peds or entities, the maximum health will be increased if the new health value exceeds the current maximum.

Default health for male peds is `200`, for female peds it is `175`.


### Added parameters
* **inflictor**: The handle for the entity that caused the damage.

## Parameters
* **entity**: The entity handle.
* **health**: The health we should set this entity to.

