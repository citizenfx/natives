---
ns: ENTITY
---
## SET_ENTITY_PROOFS

```c
// 0xFAEE099C6F890BB8 0x7E9EAB66
void SET_ENTITY_PROOFS(Entity entity, BOOL bulletProof, BOOL fireProof, BOOL explosionProof, BOOL collisionProof, BOOL meleeProof, BOOL steamProof, BOOL dontResetDamageFlagsOnCleanupMissionState, BOOL smokeProof);
```

Enable/disable damage of each type

## Parameters
* **entity**: entity to apply flags to
* **bulletProof**: whether or not the entity is bulletproof
* **fireProof**: whether or not the entity is fireproof
* **explosionProof**: whether or not the entity is explosion proof
* **collisionProof**: whether or not the entity is collision proof
* **meleeProof**: whether or not the entity is melee proof
* **steamProof**: whether or not the entity is steam proof
* **dontResetDamageFlagsOnCleanupMissionState**: whether or not to reset the damage flags after mission cleanup
* **smokeProof**: whether or not the entity is smoke proof

