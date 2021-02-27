---
ns: SHAPETEST
aliases: ["0x2B3334BCA57CD799", "_SHAPE_TEST_RESULT_ENTITY"]
---
## RELEASE_SCRIPT_GUID_FROM_ENTITY

```c
// 0x2B3334BCA57CD799 0xEC2AAF06
void RELEASE_SCRIPT_GUID_FROM_ENTITY(Entity entity);
```

Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an
ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.

## Parameters
* **entity**: The entity handle to invalidate.

