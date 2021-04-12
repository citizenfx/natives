---
ns: MISC
---
## SET_BIT

```c
// 0x933D6A9EEC1BACD0 0x4EFE7E6B
void SET_BIT(int* address, int offset);
```

```
This sets bit [offset] of [address] to on.
The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.
Example:
MISC::SET_BIT(&bitAddress, 1);
To check if this bit has been enabled:
MISC::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards
Please note, this method may assign a value to [address] when used.
```

## Parameters
* **address**: 
* **offset**: 

