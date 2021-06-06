---
ns: NETWORK
---
## NETWORK_SESSION_ENTER

```c
// 0x330ED4D05491934F 0x543CD2BE
Any NETWORK_SESSION_ENTER(Any p0, Any p1, Any p2, int maxPlayers, Any p4, Any p5);
```

```
unknown params  
p0 = 0, 2, or 999 (The global is 999 by default.)  
p1 = 0 (Always in every script it's found in atleast.)  
p2 = 0, 3, or 4 (Based on a var that is determined by a function.)  
p3 = maxPlayers (It's obvious in x360 scripts it's always 18)  
p4 = 0 (Always in every script it's found in atleast.)  
p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.)  
p5 is reset to 0 if,  
Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.  
```

## Parameters
* **p0**: 
* **p1**: 
* **p2**: 
* **maxPlayers**: 
* **p4**: 
* **p5**: 

## Return value
