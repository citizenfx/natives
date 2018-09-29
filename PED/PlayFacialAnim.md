---
ns: PED
---
## PLAY_FACIAL_ANIM

```c
// 0xE1E65CA8AC9C00ED 0x1F6CCDDE
void PLAY_FACIAL_ANIM(Ped ped, char* animName, char* animDict);
```

```
Look at facials@gen_male@base and facials@gen_female@base for some common facial animations.   
!!!NOTE!!!  
Unlike most animation natives, the animation comes BEFORE the animation dictionary here. So you could call e.g.   
PLAY_FACIAL_ANIM(ped, "dead_1", "facials@gen_male@base")  
```

## Parameters
* **ped**: 
* **animName**: 
* **animDict**: 

