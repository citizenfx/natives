---
ns: OBJECT
---
## SLIDE_OBJECT

```c
// 0x2FDFF4107B8C1147 0x63BFA7A0
BOOL SLIDE_OBJECT(Object object, float toX, float toY, float toZ, float speedX, float speedY, float speedZ, BOOL collision);
```

```
Returns true if the object has finished moving.  
If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  
See also: https://gtagmodding.com/opcode-database/opcode/034E/
Has to be looped until it returns true.   
```

## Parameters
* **object**: 
* **toX**: 
* **toY**: 
* **toZ**: 
* **speedX**: 
* **speedY**: 
* **speedZ**: 
* **collision**: 

## Return value
