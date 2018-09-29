---
ns: OBJECT
---
## _DOOR_CONTROL

```c
// 0x9B12F9A24FABEDB0 0x4E0A260B
void _DOOR_CONTROL(Hash doorHash, float x, float y, float z, BOOL locked, float xRotMult, float yRotMult, float zRotMult);
```

```
OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked  
OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked  
locked simply tells the game whether or not the door is locked.  
x,y,z RotMult are multipliers that specify how fast the door/gate will rotate in degrees per second.  
```

## Parameters
* **doorHash**: 
* **x**: 
* **y**: 
* **z**: 
* **locked**: 
* **xRotMult**: 
* **yRotMult**: 
* **zRotMult**: 

