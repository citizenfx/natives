---
ns: PHYSICS
---
## ADD_ROPE

```c
// 0xE832D760399EB220 0xA592EC74
int ADD_ROPE(float x, float y, float z, float rotX, float rotY, float rotZ, float length, int ropeType, float maxLength, float minLength, float p10, BOOL p11, BOOL p12, BOOL rigid, float p14, BOOL breakWhenShot, Any* unkPtr);
```

```
Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.  
__  
Add_Rope(pos.x,pos.y,pos.z,0.0,0.0,0.0,20.0,4,20.0,1.0,0.0,false,false,false,5.0,false,NULL)  
When attached, Position<vector> does not matter  
When attached, Angle<vector> does not matter  
Rope Type:  
4 and bellow is a thick rope  
5 and up are small metal wires  
0 crashes the game  
Max_length - Rope is forced to this length, generally best to keep this the same as your rope length.  
Rigid - If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).  
breakable - Whether or not shooting the rope will break it.  
unkPtr - unknown ptr, always 0 in orig scripts  
__  
Lengths can be calculated like so:  
float distance = abs(x1 - x2) + abs(y1 - y2) + abs(z1 - z2); // Rope length  
NOTES:  
Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).  
Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **length**: 
* **ropeType**: 
* **maxLength**: 
* **minLength**: 
* **p10**: 
* **p11**: 
* **p12**: 
* **rigid**: 
* **p14**: 
* **breakWhenShot**: 
* **unkPtr**: 

## Return value
