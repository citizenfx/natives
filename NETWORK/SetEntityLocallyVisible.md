---
ns: NETWORK
---
## SET_ENTITY_LOCALLY_VISIBLE

```c
// 0x241E289B5C059EDC 0x235A57B3
void SET_ENTITY_LOCALLY_VISIBLE(Entity entity);
```

Sets the provided entity visible for yourself for the current frame.

## Parameters
* **entity**: The entity to set locally visible.

## Examples

```lua
CreateThread(function()
  -- Any random entity should work
  local entity = GetVehiclePedIsIn(PlayerPedId(), false)
  -- Sets the entity not visible to other players
  SetEntityVisible(entity, false)
  while true do
    Wait(0)
    -- Sets the entity as visible for yourself
    SetEntityLocallyVisible(entity)
  end
end)
```
