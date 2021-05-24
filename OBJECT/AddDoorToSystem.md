---
ns: OBJECT
---
## ADD_DOOR_TO_SYSTEM

```c
// 0x6F8838D03D1DC226 0x9D2D778D
void ADD_DOOR_TO_SYSTEM(Hash doorHash, Hash modelHash, float x, float y, float z, BOOL p5, BOOL scriptDoor, BOOL isLocal);
```

p5 only set to true in single player native scripts. Door hashes normally look like `PROP_[int]_DOOR_[int]` for interior doors and `PROP_BUILDING_[int]_DOOR_[int]` exterior doors but you can just make up your own hash if you want.

If scriptDoor is true, register the door on the script handler host (note: there's a hardcap on the number of script IDs that can be added to the system at a given time). If scriptDoor and isLocal are both false, the door is considered to be in a "Persists w/o netobj" state.

A simple "localized" door-system (with hundreds/thousands of doors) can be created by setting p5, p6, and p7 to false and using EventHandlers to synchronize the states to: [DOOR_SYSTEM_SET_DOOR_STATE](#_0x6BAB9442830C7F53), [DOOR_SYSTEM_SET_OPEN_RATIO](#_0xB6E6FBA95C7324AC), [DOOR_SYSTEM_SET_HOLD_OPEN](#_0xD9B71952F78A2640), etc.

## Parameters
* **doorHash**: A (unique) door system identifier
* **modelHash**: Entity model hash
* **x**: The X coordinate of the door object
* **y**: The Y coordinate of the door object
* **z**: The Z coordinate of the door object
* **p5**: 
* **scriptDoor**: false; relies upon getNetworkGameScriptHandler.
* **isLocal**: On true disables the creation ``CRequestDoorEvent's`` in [DOOR_SYSTEM_SET_DOOR_STATE](#_0x6BAB9442830C7F53).

