---
ns: PLAYER
aliases: ["0x5006D96C995A5827"]
---
## _EXPAND_WORLD_LIMITS

```c
// 0x5006D96C995A5827
void _EXPAND_WORLD_LIMITS(float x, float y, float z);
```

```
Will change world AABB so that given point will be inside of the world limits.  
Example:  
You want world limits to be -9000<X<10000 -11000<Y<12000 and leave Z limits as is.  
You should call this function two times:  
_EXPAND_WORLD_LIMITS(-9000.0,-11000.0,30.0)  
_EXPAND_WORLD_LIMITS(10000.0,12000.0,30.0)  
Appears only 3 times in the scripts, more specifically in michael1.ysc  
Console hash: 0x64ddb07d  
-  
This can be used to prevent dying if you are "out of the world"  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 

