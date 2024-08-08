---
ns: ENTITY
---
## SET_ENTITY_HEALTH

```c
// 0x6B76DC1F3AE6E6A3 0xFBCD1831
void SET_ENTITY_HEALTH(Entity entity, int health);
```

When setting health for player ped entity types, the game clamps the health value to ensure it does not exceed the entity's maximum health. This maximum health can be retrieved by calling [`GET_PED_MAX_HEALTH`](#_0x4700A416E8324EF3). It can also be modified by calling [`SET_PED_MAX_HEALTH`](#_0xF5F6378C4F3419D3).

When setting health for non-player peds, the maximum health will be increased if the new health value exceeds the current maximum, ensuring that the changes take effect.

Default health value for male peds is `200`, for female peds it is `175`.

Applying this on other entities that are not players or peds won't clamp the value.

### Added parameters
* **inflictor**: The handle for the entity that caused the damage.

## Parameters
* **entity**: The entity handle.
* **health**: The health we should set this entity to.

