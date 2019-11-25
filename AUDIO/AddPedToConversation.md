---
ns: AUDIO
---
## ADD_PED_TO_CONVERSATION

```c
// 0x95D9F4BC443956E7 0xF8D5EB86
void ADD_PED_TO_CONVERSATION(int index, Ped ped, char* p2);
```

```
4 calls in the b617d scripts. The only one with p0 and p2 in clear text:  
AUDIO::ADD_PED_TO_CONVERSATION(5, l_AF, "DINAPOLI");  
=================================================  
One of the 2 calls in dialogue_handler.c p0 is in a while-loop, and so is determined to also possibly be 0 - 15.  
Based on it asking if does_entity_exist for the global I have determined that p1 is, in fact, the ped, but could be wrong.  
```

## Parameters
* **index**: 
* **ped**: 
* **p2**: 

