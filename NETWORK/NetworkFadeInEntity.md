---
ns: NETWORK
---
## NETWORK_FADE_IN_ENTITY

```c
// 0x1F4ED342ACEFE62D 0x9B9FCD02
void NETWORK_FADE_IN_ENTITY(Entity entity, BOOL state);
```

Fade the given entity back in, usually used after the entity has been faded out with [NETWORK_FADE_OUT_ENTITY](#_0xDE564951F95E09ED)

When used on a entity which isn't invisible or faded out then the native will still work, it will just instanly make the ped invisible before fading in.


## Parameters
* **entity**: The entity to fade in
* **flash**: When set to true the entity will flash rapidly while fading out
* **slow**: When set to true the fadein will be a little bit slower than normal

## Examples

```lua
NetworkFadeOutEntity(PlayerPedId(), false, false)
while NetworkIsEntityFading(PlayerPedId()) do
  Citizen.Wait(0)
end

--- Do something like a teleport, or warp into a vehicle

NetworkFadeInEntity(PlayerPedId(), false, false)
while NetworkIsEntityFading(PlayerPedId()) do
  Citizen.Wait(0)
end
```
