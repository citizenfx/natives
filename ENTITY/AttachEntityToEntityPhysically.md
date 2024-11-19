---
ns: ENTITY
---
## ATTACH_ENTITY_TO_ENTITY_PHYSICALLY

```c
// 0xC3675780C92F90F9 0x0547417F
void ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(Entity entity1, Entity entity2, int boneIndex1, int boneIndex2, float xPos1, float yPos1, float zPos1, float xPos2, float yPos2, float zPos2, float xRot, float yRot, float zRot, float physicalStrength, BOOL constrainRotation, BOOL doInitialWarp, BOOL collision, BOOL addInitialSeperation, int rotOrder);
```

Attaches an entity to another entity using a physical attachment


## Parameters
* **entity1**: 
* **entity2**: 
* **boneIndex1**: refers to the bone on the first entity which is being attached
* **boneIndex2**: refers to the bone on the second entity that you're attaching the first entity to
* **xPos1**: the x offset from the root of the bone on the the first entity
* **yPos1**: the y offset from the root of the bone on the the first entity
* **zPos1**: the z offset from the root of the bone on the the first entity
* **xPos2**: the x offset from the root of the bone on the the second entity
* **yPos2**: the y offset from the root of the bone on the the second entity
* **zPos2**: the z offset from the root of the bone on the the second entity
* **xRot**: 
* **yRot**: 
* **zRot**: 
* **physicalStrength**: 
* **constrainRotation**: specifies whether you wish to constrain rotation as well as position. usually yes, unless you want to have a hanging/swinging thing.
* **doInitialWarp**: specifies whether to warp the object to the specified attach point. If not, then the initial seperation will be used as an allowed give in the attachment (e.g. a rope length)
* **collision**: if set the two entities will collide with each other once attached
* **addInitialSeperation**: 
* **rotOrder**: euler order of rotation angles

