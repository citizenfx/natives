---
ns: VEHICLE
aliases: ["_GET_SUBMARINE_CRUSH_DEPTH_WARNING_STATE"]
---
## GET_SUBMARINE_NUMBER_OF_AIR_LEAKS

```c
// 0x093D6DDCA5B8FBAE
int GET_SUBMARINE_NUMBER_OF_AIR_LEAKS(Vehicle submarine);
```

Checks if a Submarine has any air leaks, when there is more than 4 the player will drown.

```
NativeDB Introduced: v2189
```

## Parameters
* **submarine**: The submarine vehicle to check for air leaks.

## Return value
Returns the number of air leaks on the submarine.