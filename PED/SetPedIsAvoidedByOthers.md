---
ns: PED
aliases: ["0xA9B61A329BFDCBEA"]
---
## SET_PED_IS_AVOIDED_BY_OTHERS

```c
// 0xA9B61A329BFDCBEA 0x2276DE0D
void SET_PED_IS_AVOIDED_BY_OTHERS(Ped ped, BOOL isAvoided);
```

```
Tells peds that are driving around to avoid specified ped if set to true.
```

## Parameters
* **ped**: Ped that is affected by native.
* **isAvoided**: Whether the specified ped is avoided by AI when driving.
