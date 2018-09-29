---
ns: HUD
---
## ADD_BLIP_FOR_ENTITY

```c
// 0x5CDE92C702A8FCE7 0x30822554
Blip ADD_BLIP_FOR_ENTITY(Entity entity);
```

```
Returns red ( default ) blip attached to entity.  
Example:  
Blip blip; //Put this outside your case or option  
blip = UI::ADD_BLIP_FOR_ENTITY(YourPedOrBodyguardName);  
UI::SET_BLIP_AS_FRIENDLY(blip, true);  
```

## Parameters
* **entity**: 

## Return value
