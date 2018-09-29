---
ns: ENTITY
---
## ATTACH_ENTITY_TO_ENTITY_PHYSICALLY

```c
// 0xC3675780C92F90F9 0x0547417F
void ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(Entity entity1, Entity entity2, int boneIndex1, int boneIndex2, float xPos1, float yPos1, float zPos1, float xPos2, float yPos2, float zPos2, float xRot, float yRot, float zRot, float breakForce, BOOL fixedRot, BOOL p15, BOOL collision, BOOL teleport, int p18);
```

```
breakForce is the amount of force required to break the bond.  
fixedRot - if false it ignores entity vector  
p15 - is 1 or 0 in scripts - unknoun what it does  
collision - controls collision between the two entities (FALSE disables collision).  
teleport - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)  
p18 - is always 2 in scripts.  
-------------------------  
teleport is not exactly "doNotTeleport". What it actually does is the following:  
if true, entities will be attached as if loosely tethered, up to the maximum offset position specified. Almost as if attached by an invisible rope.  
if false, entities will be attached in a fixed position as specified in the offset position.  
When p15 = true, it seems to force teleport to false.  
It also lets the Rotation params actually work.  
```

## Parameters
* **entity1**: 
* **entity2**: 
* **boneIndex1**: 
* **boneIndex2**: 
* **xPos1**: 
* **yPos1**: 
* **zPos1**: 
* **xPos2**: 
* **yPos2**: 
* **zPos2**: 
* **xRot**: 
* **yRot**: 
* **zRot**: 
* **breakForce**: 
* **fixedRot**: 
* **p15**: 
* **collision**: 
* **teleport**: 
* **p18**: 

