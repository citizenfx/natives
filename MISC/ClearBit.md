---
ns: MISC
---
## CLEAR_BIT

```c
// 0xE80492A9AC099A93 0x8BC9E618
void CLEAR_BIT(int* address, int offset);
```

```
This sets bit [offset] of [address] to off.
Example:
MISC::CLEAR_BIT(&bitAddress, 1);
To check if this bit has been enabled:
MISC::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards
```

## Parameters
* **address**: 
* **offset**: 

