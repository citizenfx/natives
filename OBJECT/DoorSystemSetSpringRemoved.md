---
ns: OBJECT
aliases: ["0xC485E07E4F0B7958"]
---
## DOOR_SYSTEM_SET_SPRING_REMOVED

```c
// 0xC485E07E4F0B7958 0xB4A9A558
void DOOR_SYSTEM_SET_SPRING_REMOVED(Hash doorHash, BOOL removed, BOOL requestDoor, BOOL forceUpdate);
```

Includes networking check: ownership vs. or the door itself **isn't** networked.

## Parameters
* **doorHash**: Door system identifier 
* **removed**: 
* **requestDoor**:  
* **forceUpdate**: On true invokes [DOOR_SYSTEM_SET_DOOR_STATE](#_0x6BAB9442830C7F53); otherwise requestDoor is unused.


