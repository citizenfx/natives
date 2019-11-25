---
ns: PED
---
## SET_PED_FLEE_ATTRIBUTES

```c
// 0x70A2D1137C8ED7C9 0xA717A875
void SET_PED_FLEE_ATTRIBUTES(Ped ped, int attributeFlags, BOOL enable);
```

```
Bool probably has something to do with vehicles, maybe if the ped can use vehicle to flee?  
Values used as attributes are those in sequence of powers of two, 1, 2, 4, 8, 16, 32, 64.... 65536.  
jedijosh920: Setting attribute "2" to true will make the ped steal a vehicle.  
```

## Parameters
* **ped**: 
* **attributeFlags**: 
* **enable**: 

