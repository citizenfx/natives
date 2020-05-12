---
ns: PED
---
## SET_PED_TO_RAGDOLL

```c
// 0xAE99FB955581844A 0x83CB5052
BOOL SET_PED_TO_RAGDOLL(Ped ped, int time1, int time2, int ragdollType, BOOL p4, BOOL p5, BOOL p6);
```

p4/p5: Unusued in TU27

### Ragdoll Types
**0**: CTaskNMRelax
**1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
**Else**: CTaskNMBalance

## Parameters
* **ped**: 
* **time1**: Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
* **time2**: 
* **ragdollType**: 
* **p4**:
* **p5**:
* **p6**: 

## Return value
