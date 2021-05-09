---
ns: OBJECT
aliases: ["0x899BA936634A322E", "_GET_DES_OBJECT_STATE"]
---
## GET_STATE_OF_RAYFIRE_MAP_OBJECT

```c
// 0x899BA936634A322E 0xF1B8817A
int GET_STATE_OF_RAYFIRE_MAP_OBJECT(Object object);
```

See [`SET_STATE_OF_RAYFIRE_MAP_OBJECT`](#_0x5C29F698D404C5E1) to see the different states

Get a destructible object's state. Substract 1 to get the real state. For example, if the object just spawned (state 2), the native will return 3.

## Parameters
* **object**: 

## Return value
