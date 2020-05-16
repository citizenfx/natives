---
ns: OBJECT
aliases: ["0x03C27E13B42A0E82"]
---
## DOOR_SYSTEM_SET_AUTOMATIC_RATE

```c
// 0x03C27E13B42A0E82 0x4F44AF21
void DOOR_SYSTEM_SET_AUTOMATIC_RATE(Hash doorHash, float rate, BOOL requestDoor, BOOL forceUpdate);
```

Includes networking check: ownership vs. or the door itself **isn't** networked.

## Parameters
* **doorHash**: Door system identifier
* **rate**: 
* **requestDoor**:  
* **forceUpdate**: On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#_0x6BAB9442830C7F53); otherwise requestDoor is unused.

