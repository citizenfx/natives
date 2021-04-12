---
ns: SCRIPT
---
## TRIGGER_SCRIPT_EVENT

```c
// 0x5AE99C571D5BBE5D 0x54763B35
void TRIGGER_SCRIPT_EVENT(int eventGroup, int* eventData, int eventDataSize, int playerBits);
```

```
eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
playerBits (also known as playersToBroadcastTo) is a bitset that indicates which players this event should be sent to. In order to send the event to specific players only, use (1 << playerIndex). Set all bits if it should be broadcast to all players.
```

## Parameters
* **eventGroup**: 
* **eventData**: 
* **eventDataSize**: 
* **playerBits**: 

