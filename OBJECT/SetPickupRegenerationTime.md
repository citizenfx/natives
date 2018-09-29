---
ns: OBJECT
---
## SET_PICKUP_REGENERATION_TIME

```c
// 0x78015C9B4B3ECC9D 0xAB11267D
void SET_PICKUP_REGENERATION_TIME(Pickup pickup, int duration);
```

```
duration specifies the time until the next respawn, in ms. (known values: 600000).  
Usage Example:  
Pickup pickup = OBJECT::CREATE_PICKUP_ROTATE(...);  
OBJECT::SET_PICKUP_REGENERATION_TIME(pickup, 600000); // 10mins  
```

## Parameters
* **pickup**: 
* **duration**: 

