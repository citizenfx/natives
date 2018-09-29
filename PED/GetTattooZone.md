---
ns: PED
---
## _GET_TATTOO_ZONE

```c
// 0x9FD452BFBE7A7A8B 0x3543019E
int _GET_TATTOO_ZONE(Hash collection, Hash overlay);
```

```
Returns the zoneID for the overlay if it is a member of collection.  
enum TattooZoneData  
{  
	ZONE_TORSO = 0,  
	ZONE_HEAD = 1,  
	ZONE_LEFT_ARM = 2,  
	ZONE_RIGHT_ARM = 3,  
	ZONE_LEFT_LEG = 4,  
	ZONE_RIGHT_LEG = 5,  
	ZONE_UNKNOWN = 6,  
	ZONE_NONE = 7,  
};  
```

## Parameters
* **collection**: 
* **overlay**: 

## Return value
