---
ns: NETWORK
---
## NETWORK_FADE_IN_ENTITY

```c
// 0x1F4ED342ACEFE62D 0x9B9FCD02
void NETWORK_FADE_IN_ENTITY(Entity entity, BOOL state);
```

```
state - 0 does 5 fades  
state - 1 does 6 fades  
native is missing third argument, also boolean, setting to 1 made vehicle fade in slower, probably "slow" as per NETWORK_FADE_OUT_ENTITY  
```

```
NativeDB Added Parameter 3: BOOL slow
```

## Parameters
* **entity**: 
* **state**: 

