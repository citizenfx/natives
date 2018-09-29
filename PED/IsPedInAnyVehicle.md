---
ns: PED
---
## IS_PED_IN_ANY_VEHICLE

```c
// 0x997ABD671D25CA0B 0x3B0171EE
BOOL IS_PED_IN_ANY_VEHICLE(Ped ped, BOOL atGetIn);
```

```
Gets a value indicating whether the specified ped is in any vehicle.  
If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.  
```

## Parameters
* **ped**: 
* **atGetIn**: 

## Return value
