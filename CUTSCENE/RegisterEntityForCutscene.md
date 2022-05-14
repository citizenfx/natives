---
ns: CUTSCENE
---
## REGISTER_ENTITY_FOR_CUTSCENE

```c
// 0xE40C1C56DF95C2E8 0x7CBC3EC7
void REGISTER_ENTITY_FOR_CUTSCENE(Entity cutsceneEntity, char* cutsceneEntName, int p2, Hash modelHash, int p4);
```

This can only be run once [`CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY`](#_0xB56BBBCC2955D9CB) is true, but can be run before [`HAS_CUTSCENE_LOADED`](#_0xC59F528E9AB9F339)

## Parameters
* **cutsceneEntity**: Entity to put into the cutscene.
* **cutsceneEntName**: cHandle of cutscene entity, i.e Michael, MP_1, MP_4, Lamar
* **p2**: 
* **modelHash**: Not strictly neccasary, often 0 in R* scripts
* **p4**: 0 for SP, 64 for MP seemingly

## Examples
```lua
    -- An example that allows for registering non player_zero peds in place, i.e MP peds.
    RequestCutscene("family_5_mcs_5_p5", 8)
    repeat Wait(0) until CanRequestAssetsForCutsceneEntity()
    SetCutscenePedComponentVariationFromPed("Michael", PlayerPedId(), 0)
    -- Registering can occur at any point past here before starting the cutscene.
    RegisterEntityForCutscene(PlayerPedId(), "Michael", 0, 0, 64)
    repeat Wait(0) until HasCutsceneLoaded()
    StartCutscene(0)
```