---
ns: MISC
---
## IS_BIT_SET

```c
// 0xA921AA820C25702F 0x902E26AC
BOOL IS_BIT_SET(int address, int offset);
```

```
Returns bit's boolean state from [offset] of [address].
Example:
MISC::IS_BIT_SET(bitAddress, 1);
To enable and disable bits, see:
MISC::SET_BIT(&bitAddress, 1);   // enable
MISC::CLEAR_BIT(&bitAddress, 1); // disable
```

## Parameters
* **address**: 
* **offset**: 

## Return value
