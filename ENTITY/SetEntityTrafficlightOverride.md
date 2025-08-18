---
ns: ENTITY
---
## SET_ENTITY_TRAFFICLIGHT_OVERRIDE

```c
// 0x57C5DB656185EAC4 0xC47F5B91
void SET_ENTITY_TRAFFICLIGHT_OVERRIDE(Entity entity, int state);
```

Changing traffic-lights will not change the behavior of NPCs.

Example: [here](https://www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340)

```c
enum eTrafficlightOverrideMode
{
    TLO_RED = 0,
    TLO_AMBER = 1,
    TLO_GREEN = 2,
    TLO_NONE = 3
}
```

## Parameters
* **entity**: 
* **state**: 

