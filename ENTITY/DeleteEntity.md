---
ns: ENTITY
---

## DELETE_ENTITY

```c
// 0xAE3CBE5BF394C9C9 0xFAA3D236
void DELETE_ENTITY(Entity* entity);
```

```
Deletes the specified entity, then sets the handle pointed to by the pointer to NULL.
An entity has to be a mission entity for the entity to be deleted, call SET_ENTITY_AS_MISSION_ENTITY on the entity first, if it's not already a mission entity.
```

## Parameters

- **entity**: The entity to delete.
