---
ns: CUTSCENE
aliases: ["0xB56BBBCC2955D9CB"]
---
## CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY

```c
// 0xB56BBBCC2955D9CB 0xDD8878E9
BOOL CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY();
```

Returns when it is safe to start applying changes to cutscene entities.

Should always be used for applying components.

See [`SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED`](#_0x2A56C06EBEF2B0D9) and [`REGISTER_ENTITY_FOR_CUTSCENE`](#_0xE40C1C56DF95C2E8) for an example.

This will be true before the cutscene is considered loaded

## Return value
Whether you can request assets for cutscene entities, like components.