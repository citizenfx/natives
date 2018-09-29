---
ns: OBJECT
aliases: ["0x899BA936634A322E"]
---
## _GET_DES_OBJECT_STATE

```c
// 0x899BA936634A322E 0xF1B8817A
Any _GET_DES_OBJECT_STATE(int handle);
```

```
Get a destrictible object's state.  
Substract 1 to get the real state.  
See _SET_DES_OBJECT_STATE to see the different states  
For example, if the object just spawned (state 2), the native will return 3.  
```

## Parameters
* **handle**: 

## Return value
