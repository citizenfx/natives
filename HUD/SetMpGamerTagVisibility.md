---
ns: HUD
aliases: ["0x63BB75ABEDC1F6A0"]
---
## SET_MP_GAMER_TAG_VISIBILITY

```c
// 0x63BB75ABEDC1F6A0 0xD41DF479
void SET_MP_GAMER_TAG_VISIBILITY(int gamerTagId, int component, BOOL toggle);
```

```
enum MpGamerTagComponent  
{  
  GAMER_NAME = 0,  
  CREW_TAG,  
  healthArmour,  
  BIG_TEXT,  
  AUDIO_ICON,  
  MP_USING_MENU,  
  MP_PASSIVE_MODE,  
  WANTED_STARS,  
  MP_DRIVER,  
  MP_CO_DRIVER,  
  MP_TAGGED,  
  GAMER_NAME_NEARBY,  
  ARROW,  
  MP_PACKAGES,  
  INV_IF_PED_FOLLOWING,  
  RANK_TEXT,  
  MP_TYPING  
};  
```

```
NativeDB Added Parameter 4: Any p3
```

## Parameters
* **gamerTagId**: 
* **component**: 
* **toggle**: 

