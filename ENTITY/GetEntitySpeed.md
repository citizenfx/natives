---
ns: ENTITY
---
## GET_ENTITY_SPEED

```c
// 0xD5037BA82E12416F 0x9E1E4798
float GET_ENTITY_SPEED(Entity entity);
```

```
result is in meters per second  
------------------------------------------------------------  
So would the conversion to mph and km/h, be along the lines of this.  
float speed = GET_ENTITY_SPEED(veh);  
float kmh = (speed * 3.6);  
float mph = (speed * 2.236936);  
```

## Parameters
* **entity**: 

## Return value
