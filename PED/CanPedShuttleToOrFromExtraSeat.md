---
ns: PED
aliases: ["0x2DFC81C9B9608549"]
---
## CAN_PED_SHUFFLE_TO_OR_FROM_EXTRA_SEAT

```c
// 0x2DFC81C9B9608549
BOOL CAN_PED_SHUFFLE_TO_OR_FROM_EXTRA_SEAT(Ped ped, int* targetSeatID);
```

Checks whether a specified pet can shuffle to the specified extra seat.

```
https://alloc8or.re/gta5/nativedb/?n=0x83A169EABCDB10A2?n=0x2DFC81C9B9608549
```

## Parameters
* **ped**: The ped which the check should be run on.
* **targetSeatID**: The seat for which to check whether a shuffle is possible.

## Return value
Returns true if ped is able to shuffle to the specified extra seat.
