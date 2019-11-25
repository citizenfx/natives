---
ns: GRAPHICS
aliases: ["_ADD_CLAN_DECAL_TO_VEHICLE"]
---
## ADD_VEHICLE_CREW_EMBLEM

```c
// 0x428BDCB9DA58DA53 0x12077738
BOOL ADD_VEHICLE_CREW_EMBLEM(Vehicle vehicle, Ped ped, int boneIndex, float x1, float x2, float x3, float y1, float y2, float y3, float z1, float z2, float z3, float scale, Any p13, int alpha);
```

```
Now has 15 parameters, previous declaration:  
BOOL _0x428BDCB9DA58DA53(Any p0, Any p1, Any p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float p12, Any p13)  
boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone. They are usually rotations and measurements. Haven't reversed which are what yet.  
Scale is how big the decal will be.  
p13 is always 0.  
For alpha, 200 seems to match what the game is doing, I think. I don't have access to the new scripts to see what this parameter is, but based on guessing this seems (kind of) accurate.  
```

## Parameters
* **vehicle**: 
* **ped**: 
* **boneIndex**: 
* **x1**: 
* **x2**: 
* **x3**: 
* **y1**: 
* **y2**: 
* **y3**: 
* **z1**: 
* **z2**: 
* **z3**: 
* **scale**: 
* **p13**: 
* **alpha**: 

## Return value
