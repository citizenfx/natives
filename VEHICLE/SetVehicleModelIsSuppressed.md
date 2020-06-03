---
ns: VEHICLE
---
## SET_VEHICLE_MODEL_IS_SUPPRESSED

```c
// 0x0FC2D89AC25A5814 0x42A08C9B
void SET_VEHICLE_MODEL_IS_SUPPRESSED(Hash model, BOOL suppressed);
```

```
seems to make the vehicle stop spawning naturally in traffic. Here's an essential example:  
VEHICLE::SET_VEHICLE_MODEL_IS_SUPPRESSED(GAMEPLAY::GET_HASH_KEY("taco"), true);  
```

## Parameters
* **model**: 
* **suppressed**: 

