---
ns: OBJECT
aliases: ["0xC153C43EA202C8C1","_DOES_DOOR_EXIST"]
---
## IS_DOOR_REGISTERED_WITH_SYSTEM

```c
// 0xC153C43EA202C8C1 0x5AFCD8A1
BOOL IS_DOOR_REGISTERED_WITH_SYSTEM(Hash doorHash);
```

```
Example:  
if (OBJECT::_DOES_DOOR_EXIST(doorHash))  
{  
    OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);  
}  
```

## Parameters
* **doorHash**: 

## Return value
