---
ns: ENTITY
---
## APPLY_FORCE_TO_ENTITY

```c
// 0xC5F68BE9613E2D18 0xC1C0855A
void APPLY_FORCE_TO_ENTITY(Entity entity, int forceFlags, float x, float y, float z, float offX, float offY, float offZ, int boneIndex, BOOL isDirectionRel, BOOL ignoreUpVec, BOOL isForceRel, BOOL p12, BOOL p13);
```

```
Documented here:  
gtaforums.com/topic/885669-precisely-define-object-physics/  
gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/  
forceFlags:  
First bit (lowest): Strong force flag, factor 100  
Second bit: Unkown flag  
Third bit: Momentum flag=1 (vector (x,y,z) is a momentum, more research needed)  
If higher bits are unequal 0 the function doesn't applay any forces at all.  
(As integer possible values are 0-7)  
0: weak force  
1: strong force  
2: same as 0 (2nd bit?)  
3: same as 1  
4: weak momentum  
5: strong momentum  
6: same as 4  
7: same as 5  
isDirectionRel: vector defined in local (body-fixed) coordinate frame  
isForceRel: if true the force gets multiplied with the objects mass (this is why it was known as highForce) and different objects will have the same acceleration.  
```

## Parameters
* **entity**: 
* **forceFlags**: 
* **x**: 
* **y**: 
* **z**: 
* **offX**: 
* **offY**: 
* **offZ**: 
* **boneIndex**: 
* **isDirectionRel**: 
* **ignoreUpVec**: 
* **isForceRel**: 
* **p12**: 
* **p13**: 

