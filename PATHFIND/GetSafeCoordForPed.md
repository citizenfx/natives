---
ns: PATHFIND
---
## GET_SAFE_COORD_FOR_PED

```c
// 0xB61C8E878A4199CA 0xB370270A
BOOL GET_SAFE_COORD_FOR_PED(float x, float y, float z, BOOL onGround, Vector3* outPosition, int flags);
```

```
When onGround == true outPosition is a position located on the nearest pavement.  
When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.  
In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16.   
16 works for me, 0 crashed the script.  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **onGround**: 
* **outPosition**: 
* **flags**: 

## Return value
