---
ns: VEHICLE
---
## SET_VEHICLE_DOORS_LOCKED

```c
// 0xB664292EAECF7FA6 0x4CDD35D0
void SET_VEHICLE_DOORS_LOCKED(Vehicle vehicle, int doorLockStatus);
```

```
0 - CARLOCK_NONE
1 - CARLOCK_UNLOCKED
2 - CARLOCK_LOCKED (locked)
3 - CARLOCK_LOCKOUT_PLAYER_ONLY
4 - CARLOCK_LOCKED_PLAYER_INSIDE (can get in, can't leave)
(maybe, these are leftovers from GTA:VC)
5 - CARLOCK_LOCKED_INITIALLY
6 - CARLOCK_FORCE_SHUT_DOORS
7 - CARLOCK_LOCKED_BUT_CAN_BE_DAMAGED
(source: GTA VC miss2 leak, matching constants for 0/2/4, testing)
They use 10 in am_mp_property_int, don't know what it does atm.
```

## Parameters
* **vehicle**: 
* **doorLockStatus**: 

