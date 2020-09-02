---
ns: ENTITY
---
## SET_ENTITY_MAX_SPEED

```c
// 0x0E46A3FCBDE2A1B1 0x46AFFED3
void SET_ENTITY_MAX_SPEED(Entity entity, float speed);
```

```
speed is in meters per second
To convert for example, 40mph/kmh you would do something like this
float mphToMs = 40.0 / 2.236936;
float kmhToMs = 40.0 / 3.6;

SET_ENTITY_MAX_SPEED(veh, mphToMs);
SET_ENTITY_MAX_SPEED(veh, kmhToMs);
```


## Parameters
* **entity**: 
* **speed**: 

