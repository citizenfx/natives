---
ns: OBJECT
aliases: ["0x9B12F9A24FABEDB0", "_DOOR_CONTROL"]
---
## SET_LOCKED_UNSTREAMED_IN_DOOR_OF_TYPE

```c
// 0x9B12F9A24FABEDB0 0x4E0A260B
void SET_LOCKED_UNSTREAMED_IN_DOOR_OF_TYPE(Hash modelHash, float x, float y, float z, BOOL locked, float xRotMult, float yRotMult, float zRotMult);
```

Hardcoded not to work in multiplayer environments.
Native name between `SET_LOCAL_PLAYER_VISIBLE_LOCALLY` & `SET_MAX_WANTED_LEVEL`.

```
OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked
OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked
```

## Parameters
* **modelHash**: 
* **x**: 
* **y**: 
* **z**: 
* **locked**: tells the game whether or not the door is locked
* **xRotMult**: multiplier that specifies how fast the door/gate will rotate in degrees per second.
* **yRotMult**: multiplier that specifies how fast the door/gate will rotate in degrees per second.
* **zRotMult**: multiplier that specifies how fast the door/gate will rotate in degrees per second.

## Examples
```lua
DoorControl(`prop_gate_prison_01`, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0) -- door unlocked
DoorControl(`prop_gate_prison_01`, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0) -- door locked
```
