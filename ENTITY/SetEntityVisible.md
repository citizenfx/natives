---
ns: ENTITY
---
## SET_ENTITY_VISIBLE

```c
// 0xEA1C610A04DB6BBB 0xD043E8E1
void SET_ENTITY_VISIBLE(Entity entity, BOOL toggle, BOOL unk);
```

Toggle the visibility of a given entity.
If you want to change visibility of `PlayerPedId()`, it will change for other players and **will not** apply for you.
You have to use `SET_ENTITY_LOCALLY_INVISIBLE` or other natives like this to change visibility of your character.

## Parameters
* **entity**: The entity to change the visibility of
* **toggle**: Whether or not the entity will be visible
* **unk**: Always 0 in scripts

## Examples
```lua
SetEntityVisible(PlayerPedId(), false, 0)
```
