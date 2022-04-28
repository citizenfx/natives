---
ns: WATER
aliases: ["0xFDBF4CDBC07E1706"]
---
## _ADD_CURRENT_RISE

```c
// 0xFDBF4CDBC07E1706 0xA9419B6D
int _ADD_CURRENT_RISE(float xLow, float yLow, float xHigh, float yHigh, float height);
```

```
Most likely ADD_CURRENT_*
```

Only 8 current rises can exist. If rises need to be changed, use _REMOVE_CURRENT_RISE and then _ADD_CURRENT_RISE again.
After removing a rise, you will be able to add a rise again.

## Parameters
* **xLow**: 
* **yLow**: 
* **xHigh**: 
* **yHigh**: 
* **height**: 

## Return value
If succeeded to add, returns a rise index that can be used on _REMOVE_CURRENT_RISE.
If failed to add, returns -1 (make sure you don't pass -1 to _REMOVE_CURRENT_RISE). 
