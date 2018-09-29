---
ns: OBJECT
---
## SET_STATE_OF_CLOSEST_DOOR_OF_TYPE

```c
// 0xF82D8F1926A02C3D 0x38C951A4
void SET_STATE_OF_CLOSEST_DOOR_OF_TYPE(Hash type, float x, float y, float z, BOOL locked, float heading, BOOL p6);
```

```
Hardcoded to not work in multiplayer.  
Used to lock/unlock doors to interior areas of the game.  
(Possible) Door Types:  
pastebin.com/9S2m3qA4  
Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.  
Locked means that the heading is locked.    
p6 is always 0.   
225 door types, model names and coords found in stripclub.c4:  
pastebin.com/gywnbzsH  
get door info: pastebin.com/i14rbekD  
```

## Parameters
* **type**: 
* **x**: 
* **y**: 
* **z**: 
* **locked**: 
* **heading**: 
* **p6**: 

