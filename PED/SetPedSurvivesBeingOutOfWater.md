---
ns: PED
---
## _SET_PED_SURVIVES_BEING_OUT_OF_WATER

```c
// 0x100CD221F572F6E1
BOOL _SET_PED_SURVIVES_BEING_OUT_OF_WATER(Ped ped, BOOL toggle);
```

Allows marine animals to survive outside of water (R* is using it for sharks).

```
NativeDB Introduced: v3407
```

## Parameters
* **ped**: The marine animal ped
* **toggle**: `true` to allow survival out of water, `false` to apply normal water restrictions.

## Return value
Returns `true` if successful.
