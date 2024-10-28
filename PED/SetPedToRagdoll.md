---
ns: PED
---
## SET_PED_TO_RAGDOLL

```c
// 0xAE99FB955581844A 0x83CB5052
BOOL SET_PED_TO_RAGDOLL(Ped ped, int minTime, int maxTime, int ragdollType, BOOL bAbortIfInjured, BOOL bAbortIfDead, BOOL bForceScriptControl);
```

p4/p5: Unusued in TU27

### Ragdoll Types
**0**: CTaskNMRelax
**1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
**Else**: CTaskNMBalance

## Parameters
* **ped**: The ped to ragdoll.
* **minTime**: Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.
* **maxTime**:
* **ragdollType**: 
* **bAbortIfInjured**: unused
* **bAbortIfDead**: unused
* **bForceScriptControl**:

## Return value
