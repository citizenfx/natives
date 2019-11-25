---
ns: PLAYER
aliases: ["0xC2AFFFDABBDC2C5C"]
---
## _SET_ACHIEVEMENT_PROGRESSION

```c
// 0xC2AFFFDABBDC2C5C
BOOL _SET_ACHIEVEMENT_PROGRESSION(int achievement, int progress);
```

```
This seems to be related to Steam achievements.  
p0 and p1 are int (?)  
------  
Can't say anything about the Steam version but it is hardcoded to always return false in the retail version.  
Dr. Underscore (1/6/18):  
This has to do with achievement progression. If this achievement has progression, it will set the progression of it to this value.  
Only tested on un-achieved achievements, Steamworks probably just rejects it if it has already been achieved.  
Steamworks also seems to not like reversing achievement progression.  
```

## Parameters
* **achievement**: 
* **progress**: 

## Return value
