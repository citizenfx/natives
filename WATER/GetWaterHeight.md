---
ns: WATER
---
## GET_WATER_HEIGHT

```c
// 0xF6829842C06AE524 0xD864E17C
BOOL GET_WATER_HEIGHT(float x, float y, float z, float* height);
```

Retrieves the depth of the water beneath the specified position, accounting for the waves. Note: The result might vary depending on the specific frame when this command is executed due to wave fluctuations.

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **height**: 

## Return value
Note: seems to return true when you are in water  