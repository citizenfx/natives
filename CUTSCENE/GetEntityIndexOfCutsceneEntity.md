---
ns: CUTSCENE
---
## GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY

```c
// 0x0A2E9FDB9A8C62F6 0x1D09ABC7
Entity GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY(char* cutsceneEntName, Hash modelHash);
```

Returns the handle of a cutscene entity, can be ped

## Parameters
* **cutsceneEntName**: I.E MP_1, MP_4, Michael, Trevor
* **modelHash**: Not strictly neccasary, can get 0

## Return value
Returns entity handle