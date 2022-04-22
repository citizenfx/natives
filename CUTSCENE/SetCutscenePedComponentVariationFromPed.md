---
ns: CUTSCENE
aliases: ["0x2A56C06EBEF2B0D9"]
---
## SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED

```c
// 0x2A56C06EBEF2B0D9 0x1E7DA95E
void SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED(char* cutsceneEntName, Ped ped, Hash modelHash);
```

Sets the components for a cutscene ped, this will take precendence over the cutscene's component overrides. This does not require the entity be registered.

See

## Parameters
* **cutsceneEntName**: cut file cHandle, i.e Michael, Lamar, Franklin, MP_1-MP_4 etc
* **ped**: Ped to copy components from
* **modelHash**: Not strictly neccasary, can be 0
