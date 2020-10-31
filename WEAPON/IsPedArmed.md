---
ns: WEAPON
---
## IS_PED_ARMED

```c
// 0x475768A975D5AD17 0x0BFC892C
BOOL IS_PED_ARMED(Ped ped, int typeFlags);
```

Checks if the ped is currently equipped with a weapon matching a bit specified using a bitwise-or in typeFlags.

| Bit value | Effect            |
|-----------|-------------------|
| 1         | Melee weapons     |
| 2         | Explosive weapons |
| 4         | Any other weapons |

Not specifying any bit will lead to the native *always* returning 'false', and for example specifying '4 | 2' will check for any weapon except fists and melee weapons.

## Parameters
* **ped**: The ped to check armed state on.
* **typeFlags**: Type flags to check.

## Return value
Whether or not the ped is currently equipped with any weapon matching typeFlags.
