---
ns: ENTITY
---
## ATTACH_ENTITY_TO_ENTITY

```c
// 0x6B9BBD38AB0796DF 0xEC024237
void ATTACH_ENTITY_TO_ENTITY(Entity entity1, Entity entity2, int boneIndex, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, BOOL p9, BOOL useSoftPinning, BOOL collision, BOOL isPed, int vertexIndex, BOOL fixedRot);
```

```
Attaches entity1 to bone (boneIndex) of entity2.  
boneIndex - this is different to boneID, use GET_PED_BONE_INDEX to get the index from the ID. use the index for attaching to specific bones. entity1 will be attached to entity2's centre if bone index given doesn't correspond to bone indexes for that entity type.  
useSoftPinning - when 2 entities with collision collide and form into a ball they will break the attachment of the entity that they were attached to. Or when an entity is attached far away and then the resets.  
collision - controls collision between the two entities (FALSE disables collision).  
isPed - pitch doesnt work when false and roll will only work on negative numbers (only peds)  
vertexIndex - position of vertex  
fixedRot - if false it ignores entity vector  
```

## Parameters
* **entity1**: 
* **entity2**: 
* **boneIndex**: 
* **xPos**: 
* **yPos**: 
* **zPos**: 
* **xRot**: 
* **yRot**: 
* **zRot**: 
* **p9**: 
* **useSoftPinning**: 
* **collision**: 
* **isPed**: 
* **vertexIndex**: 
* **fixedRot**: 

