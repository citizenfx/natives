---
ns: OBJECT
aliases: ["0x6BAB9442830C7F53","_SET_DOOR_ACCELERATION_LIMIT"]
---
## DOOR_SYSTEM_SET_DOOR_STATE

```c
// 0x6BAB9442830C7F53 0xDF83DB47
void DOOR_SYSTEM_SET_DOOR_STATE(Hash doorHash, int state, BOOL requestDoor, BOOL forceUpdate);
```

Lockstates not applied and CNetObjDoor's not created until [DOOR_SYSTEM_GET_IS_PHYSICS_LOADED](#_0xDF97CDD4FC08FD34) returns true.

### Door lock states: (v323)
* **0**: UNLOCKED
* **1**: LOCKED
* **2**: DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA
* **3**: DOORSTATE_FORCE_UNLOCKED_THIS_FRAME
* **4**: DOORSTATE_FORCE_LOCKED_THIS_FRAME
* **5**: DOORSTATE_FORCE_OPEN_THIS_FRAME
* **6**: DOORSTATE_FORCE_CLOSED_THIS_FRAME

## Parameters
* **doorHash**: 
* **state**: 
* **requestDoor**: On true, and when door system is configured to, i.e., "persists w/o netobj", generate a CRequestDoorEvent.
* **forceUpdate**: On true, forces an update on the door system (same path as netObjDoor_applyDoorStuff)

