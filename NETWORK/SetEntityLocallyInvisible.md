---
ns: NETWORK
---
## SET_ENTITY_LOCALLY_INVISIBLE

```c
// 0xE135A9FF3F5D05D8 0x51ADCC5F
void SET_ENTITY_LOCALLY_INVISIBLE(Entity entity);
```

Makes the provided entity visible for yourself for the current frame.

## Parameters
* **entity**: 

## Examples

```lua
-- Any random entity should work
local entity = PlayerPedId()

-- Make the entity invisible
SetEntityVisible(entity, false, false)

CreateThread(function()
  while true do
    Wait(0)
    -- Make the entity visible for the current player only.
    SetEntityLocallyInvisible(entity)
  end
end)
```
