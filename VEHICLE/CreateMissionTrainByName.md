---
ns: VEHICLE
---
## CREATE_MISSION_TRAIN_BY_NAME

```c
// 0xAE548FA8
Vehicle CREATE_MISSION_TRAIN_BY_NAME(char *variationName, float x, float y, float z, BOOL direction);
```

```
Train models HAVE TO be loaded (requested) before you use this.  
For example, these may have to be loaded:
freight  
freightcar  
freightgrain  
freightcont1  
freightcont2  
freighttrailer  
```

## Parameters
* **variationName**: 
* **x**: 
* **y**: 
* **z**: 
* **direction**: 

## Return value
Returns -1 if the variationName was invalid.
Otherwise, it returns the scriptGuid handle.
