---
ns: PLAYER
---
## SET_SWIM_MULTIPLIER_FOR_PLAYER

```c
// 0xA91C6F0FF7D16A13 0xB986FF47
void SET_SWIM_MULTIPLIER_FOR_PLAYER(Player player, float multiplier);
```

```
Swim speed multiplier.  
Multiplier goes up to 1.49  
Just call it one time, it is not required to be called once every tick. - Note copied from below native.  
Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
```

## Parameters
* **player**: 
* **multiplier**: 

