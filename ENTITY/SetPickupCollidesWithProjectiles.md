---
ns: ENTITY
aliases: ["0xCEA7C8E1B48FF68C"]
---
## SET_PICKUP_COLLIDES_WITH_PROJECTILES

```c
// 0xCEA7C8E1B48FF68C
void SET_PICKUP_COLLIDES_WITH_PROJECTILES(Entity pickup, cs_type(Any) BOOL collideWithProjectiles);
```

Sets whether a pickup entity will physically interact with projectiles in the game world. This can be used to either allow or prevent projectiles from colliding with and potentially moving or destroying pickups.

```
NativeDB Introduced: v678
```

## Parameters
* **pickup**: The pickup entity to modify. This specifies which pickup's collision behavior with projectiles is being set.
* **collideWithProjectiles**: Set `true` to make the pickup interact with projectiles, or `false` to ignore collisions with them.