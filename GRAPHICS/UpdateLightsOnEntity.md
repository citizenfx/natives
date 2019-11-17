---
ns: GRAPHICS
aliases: ["0xDEADC0DEDEADC0DE"]
---
## _ENTITY_DESCRIPTION_TEXT

```c
// 0xDEADC0DEDEADC0DE 0xC12AC47A
void _ENTITY_DESCRIPTION_TEXT(Entity entity);
```

```
Only found twice in decompiled scripts. Something to do with an entity/object?  
On a side note, it's very interesting how the hash for this native is "DEADC0DE" - this is usually used as padding for initializing a buffer of some sort. I wonder if this native is actually "dead"?  
"carmod_shop.ysc", line 9520:  
if (ENTITY::DOES_ENTITY_EXIST(l_324._f6)) {  
    GRAPHICS::_0xDEADC0DEDEADC0DE(l_324._f6);  
}  
"fm_mission_controller.ysc", line 189641:  
if (GAMEPLAY::IS_BIT_SET(g_1870E1._f7B64[a_0/*104*/]._f25, 28)) {  
    GRAPHICS::_0xDEADC0DEDEADC0DE(NETWORK::NET_TO_OBJ(l_4064._f26A._f87[a_0/*1*/]));  
    if (!GAMEPLAY::IS_BIT_SET(g_1870E1._f7B64[a_0/*104*/]._f25, 31)) {  
        if (!ENTITY::IS_ENTITY_DEAD(v_7)) {  
            AUDIO::PLAY_SOUND_FROM_ENTITY(-1, "EMP_Vehicle_Hum", v_7, "DLC_HEIST_BIOLAB_DELIVER_EMP_SOUNDS", 0, 0);  
            GAMEPLAY::SET_BIT(&g_1870E1._f7B64[a_0/*104*/]._f25, 31);  
        }  
    }  
}  
----------  
It's most likely named UPDATE_* (like UPDATE_ENTITY_SHIT_OR_SOMETHING).  
```

## Parameters
* **entity**: 

