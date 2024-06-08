---
ns: VEHICLE
aliases: ["0xC67DB108A9ADE3BE"]
---
## FORCE_SUBMARINE_NEURTAL_BUOYANCY

```c
// 0xC67DB108A9ADE3BE
void FORCE_SUBMARINE_NEURTAL_BUOYANCY(Vehicle submarine, int time);
```

Forces a submarine to maintain neutral buoyancy for a specified duration, preventing it from rising when unoccupied or without a driver.

```
NativeDB Introduced: v2189
```

## Parameters
* **submarine**: The submarine vehicle to apply neutral buoyancy to.
* **time**: The duration in milliseconds for which to maintain neutral buoyancy.
