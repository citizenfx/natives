---
ns: PED
---
## GET_PED_EXTRACTED_DISPLACEMENT

```c
// 0xE0AF41401ADF87E3 0x5231F901
Vector3 GET_PED_EXTRACTED_DISPLACEMENT(Ped ped, BOOL worldSpace);
```

```
Gets the offset the specified ped has moved since the previous tick.  
If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.  
If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.  
```

## Parameters
* **ped**: 
* **worldSpace**: 

## Return value
