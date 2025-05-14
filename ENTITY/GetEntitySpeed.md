---
ns: ENTITY
---
## GET_ENTITY_SPEED

```c
// 0xD5037BA82E12416F 0x9E1E4798
float GET_ENTITY_SPEED(Entity entity);
```

Get the speed of a entity.

## Parameters
* **entity**: Entity id you want to test for speed.

## Return value
Speed of a entity in m/s. You can convert to km/h using the value you get and multiply by 3.6, and miles/h by 2.236936. Also, the float returned is the length of [GET_ENTITY_SPEED_VECTOR](#_0x9A8D700A51CB7B0D)
