---
ns: PHYSICS
---
## ADD_ROPE

```c
// 0xE832D760399EB220 0xA592EC74
int ADD_ROPE(float x, float y, float z, float rotX, float rotY, float rotZ, float maxLength, int ropeType, float initLength, float minLength, float lengthChangeRate, BOOL onlyPPU, BOOL collisionOn, BOOL lockFromFront, float timeMultiplier, BOOL breakable, Any* unkPtr);
```

```
Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.  
__  
Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).  
Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.  
```

## Parameters
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **rotX**: Rotation X component.
* **rotY**: Rotation Y component.
* **rotZ**: Rotation Z component.
* **maxLength**: The maximum length the rope can droop.
* **ropeType**: 1 to 4 are thick ropes. 5 and up are thin ropes. Ropes types defined in ropedata.xml. An invalid rope type such as 0 will crash the game.
* **initLength**: The initial length of the rope.
* **minLength**: The minimum length the rope can be.
* **lengthChangeRate**: The speed in which the rope will wind if winding is started.
* **onlyPPU**: 
* **collisionOn**: Whether the rope should have collision. In original scripts this is followed by a LoadRopeData call when set.
* **lockFromFront**: If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).
* **timeMultiplier**: The speed as which physics should run at. 1.0f is normal, 2.0f is twice as fast, -1.0f is time going backwards. This can affect gravity, etc.
* **breakable**: Whether shooting the rope will break it.
* **unkPtr**: Unknown pointer, always 0 in original scrips.

## Return value
A script handle for the rope