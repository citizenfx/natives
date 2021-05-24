---
ns: OBJECT
aliases: ["0x5C29F698D404C5E1", "_SET_DES_OBJECT_STATE"]
---
## SET_STATE_OF_RAYFIRE_MAP_OBJECT

```c
// 0x5C29F698D404C5E1 0x21F51560
void SET_STATE_OF_RAYFIRE_MAP_OBJECT(Object object, int state);
```

```
Defines the state of a destructible object.
Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords.
State 2 == object just spawned
State 4 == Beginning of the animation
State 6 == Start animation
State 9 == End of the animation
```

## Parameters
* **object**: 
* **state**: 

