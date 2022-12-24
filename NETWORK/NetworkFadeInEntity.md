---
ns: NETWORK
---
## NETWORK_FADE_IN_ENTITY

```c
// 0x1F4ED342ACEFE62D 0x9B9FCD02
void NETWORK_FADE_IN_ENTITY(Entity entity, BOOL normal, BOOL slow);
```

Fades an entity in if it has been faded out with NetworkFadeOutEntity.
Example with slow as true: https://streamable.com/9hr887
Example with slow as false and normal as true: https://streamable.com/8aw9d3

## Parameters
* **entity**: 
* **normal**: if slow is false and this is set to true, entity will fade in instantly
* **slow**: if true, entity will fade in slowly after a few flashes
