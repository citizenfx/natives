---
ns: OBJECT
---
## SET_OBJECT_PHYSICS_PARAMS

```c
// 0xF6DF6E90DE7DF90F 0xE8D11C58
void SET_OBJECT_PHYSICS_PARAMS(Object object, float mass, float gravityFactor, float linearX, float linearY, float linearZ, float angularX, float angularY, float angularZ, float fCollisionMargin, float fMaxAngularSpeed, float fBuoyancyFactor);
```

Set physics parameters on this instance of an object

## Parameters
* **object**: object id
* **mass**: object mass (rotational inertia is calculated from new mass and volume) 
* **gravityFactor**: the gravity affecting this object can be modified (default is 1.0) 
* **linearX**: constant friction (doesn't depend on speed)
* **linearY**: speed dependent friction (multiplied by speed)
* **linearZ**: aerodynamic drag (multiplied by speed squared) 
* **angularX**: constant friction (doesn't depend on speed)
* **angularY**: speed dependent friction (multiplied by speed)
* **angularZ**: aerodynamic drag (multiplied by speed squared) 
* **fCollisionMargin**: set to thinnist part of object. Default is 10cm 
* **fMaxAngularSpeed**: increase for objects which are likely to spin fast, e.g. small spheres. Default is 2*PI 
* **fBuoyancyFactor**: scaling of an object's buoyancy in water.

