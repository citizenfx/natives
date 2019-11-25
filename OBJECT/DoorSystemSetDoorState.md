---
ns: OBJECT
aliases: ["0x6BAB9442830C7F53","_SET_DOOR_ACCELERATION_LIMIT"]
---
## DOOR_SYSTEM_SET_DOOR_STATE

```c
// 0x6BAB9442830C7F53 0xDF83DB47
void DOOR_SYSTEM_SET_DOOR_STATE(Hash doorHash, int limit, BOOL p2, BOOL p3);
```

```
Sets the acceleration limit of a door.
How fast it can open, or the inverse hinge resistance.
A limit of 0 seems to lock doors.
p2 is always 0, p3 is always 1.
```

## Parameters
* **doorHash**: 
* **limit**: 
* **p2**: 
* **p3**: 

