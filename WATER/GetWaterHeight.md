---
ns: WATER
---
## GET_WATER_HEIGHT

```c
// 0xF6829842C06AE524 0xD864E17C
BOOL GET_WATER_HEIGHT(float x, float y, float z, float* height);
```

```
This function set height to the value of z-axis of the water surface.  
This function works with sea and lake. However it does not work with shallow rivers (e.g. raton canyon will return -100000.0f)  
note: seems to return true when you are in water  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **height**: 

## Return value
