---
ns: WATER
aliases: ["0xFDBF4CDBC07E1706", "_ADD_CURRENT_RISE"]
---
## ADD_EXTRA_CALMING_QUAD

```c
// 0xFDBF4CDBC07E1706 0xA9419B6D
int ADD_EXTRA_CALMING_QUAD(float xLow, float yLow, float xHigh, float yHigh, float height);
```

Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
After removing a rise, you will be able to add a rise again.

## Parameters
* **xLow**: 
* **yLow**: 
* **xHigh**: 
* **yHigh**: 
* **height**: 

## Return value
If succeeded to add, returns a rise index that can be used on REMOVE_EXTRA_CALMING_QUAD.
If failed to add, returns -1 (make sure you don't pass -1 to REMOVE_EXTRA_CALMING_QUAD). 
