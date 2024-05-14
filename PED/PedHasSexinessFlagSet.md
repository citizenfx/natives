---
ns: PED
aliases: ["0x46B05BCAE43856B0"]
---
## PED_HAS_SEXINESS_FLAG_SET

```c
// 0x46B05BCAE43856B0 0x79543043
BOOL PED_HAS_SEXINESS_FLAG_SET(Ped ped, int flag);
```

Checks if the specified ped has the specified sexiness flag set on it.

```
https://alloc8or.re/gta5/nativedb/?n=0x83A169EABCDB10A2?n=0x46B05BCAE43856B0
```

## Parameters
* **ped**: Ped to check for
* **flag**: 

## Return value
Returns true if specified flag is set, otherwise false.


```c
enum eSexinessFlags
{
    SF_JEER_AT_HOT_PED = 0,
    SF_HURRIEDFEMALES_SEXY = 1,
    SF_HOT_PERSON = 2,
}
```
