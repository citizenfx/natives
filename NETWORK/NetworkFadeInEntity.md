---
ns: NETWORK
---
## NETWORK_FADE_IN_ENTITY

```c
// 0x1F4ED342ACEFE62D 0x9B9FCD02
void NETWORK_FADE_IN_ENTITY(Entity entity, BOOL bNetwork);
```

Fade the given entity back in, usually used after the entity has been faded out with [NETWORK_FADE_OUT_ENTITY](#_0xDE564951F95E09ED)

When used on a entity which isn't invisible or faded out then the native will still work, it will just instanly make the ped invisible before fading in.

**Additional Parameters**:
* **flash**: If set to true the entity will flash while fading in.


## Parameters
* **entity**: The entity to fade in
* **bNetwork**: When set to true the fade in will be networked.

## Examples

```lua
local playerPed = PlayerPedId()

-- fade out the player while flashing them
NetworkFadeOutEntity(playerPed, true, false)
while NetworkIsEntityFading(playerPed) do
  Wait(0)
end

--- Do something like a teleport, or warp into a vehicle

-- while generally frowned upon when you can use natives, this declaration has
-- a missing parameter, which doesn't work without manually invoking.
Citizen.InvokeNative(0x1F4ED342ACEFE62D, playerPed, false, true)
while NetworkIsEntityFading(playerPed) do
  Wait(0)
end
```
