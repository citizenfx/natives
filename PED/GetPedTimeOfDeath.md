---
ns: PED
aliases: ["_GET_PED_TIME_OF_DEATH","0x1E98817B311AE98A"]
---
## GET_PED_TIME_OF_DEATH

```c
// 0x1E98817B311AE98A 0xDF6D5D54
int GET_PED_TIME_OF_DEATH(Ped ped);
```

```
Name was _GET_PED_TIME_OF_DEATH  
-----------------------------------------------------------------  
There is no way this is the correct name. The only time this is called it's compared with the game timer and I used this to test something and noticed when I was killed by no matter what it was my 'Time Of Death' via this native was always 0, but my friends was some random big number like so, 147591.  
Retreives [CPed + 15CC] (as of 944)  
```

## Parameters
* **ped**: 

## Return value
