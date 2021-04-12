---
ns: SCRIPT
---
## GET_EVENT_DATA

```c
// 0x2902843FCD2B2D79 0x4280F92F
BOOL GET_EVENT_DATA(int eventGroup, int eventIndex, int* eventData, int eventDataSize);
```

```
eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
```

## Parameters
* **eventGroup**: 
* **eventIndex**: 
* **eventData**: 
* **eventDataSize**: 

## Return value
