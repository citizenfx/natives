---
ns: OBJECT
---
## CREATE_OBJECT_NO_OFFSET

```c
// 0x9A294B2138ABB884 0x58040420
Object CREATE_OBJECT_NO_OFFSET(Hash modelHash, float x, float y, float z, BOOL isNetwork, BOOL thisScriptCheck, BOOL dynamic);
```

```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p5 - does not mean object handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
----------  
prop_tt_screenstatic (0xE2E039BC) is handled different. Not sure how yet but it I know it is.  
```

## Parameters
* **modelHash**: 
* **x**: 
* **y**: 
* **z**: 
* **isNetwork**: 
* **thisScriptCheck**: 
* **dynamic**: 

## Return value
