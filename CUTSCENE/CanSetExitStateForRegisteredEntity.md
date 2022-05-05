---
ns: CUTSCENE
---
## CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY

```c
// 0x4C6A6451C79E4662 0x8FF5D3C4
BOOL CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY(char* cutsceneEntName, Hash modelHash);
```
Returns if the script can begin interacting with the registered entity. Primarly used for lead-outs of cutscenes.
Returns on frame after cutscene ends, so you cannot get is while using IsCutsceneActive()

Whether it is safe to start doing scripted actions on the entity, like simulating walking out of a cutscene.

## Parameters
* **cutsceneEntName**: i.e Michael
* **modelHash**: Can be 0

## Return value
Whether or not it is safe to begin interacting with the entity