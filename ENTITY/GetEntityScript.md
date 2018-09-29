---
ns: ENTITY
---
## GET_ENTITY_SCRIPT

```c
// 0xA6E9C38DB51D7748 0xB7F70784
char* GET_ENTITY_SCRIPT(Entity entity, ScrHandle* script);
```

```
All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.  
```

## Parameters
* **entity**: 
* **script**: 

## Return value
