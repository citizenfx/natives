---
ns: GRAPHICS
aliases: ["_HAS_VEHICLE_GOT_DECAL","_DOES_VEHICLE_HAVE_DECAL"]
---
## DOES_VEHICLE_HAVE_CREW_EMBLEM

```c
// 0x060D935D3981A275 0x6D58F73B
BOOL DOES_VEHICLE_HAVE_CREW_EMBLEM(Vehicle vehicle, int p1);
```

```
This function is called before ADD_CLAN_DECAL_TO_VEHICLE to see if it needs to run. IDK if it's for clan decal or not, but the 2nd parameter might be decal index? It's always passed 0. Not sure what this function really does. But it does return 0 if the clan tag is not on, and 1 if it is.  
```

## Parameters
* **vehicle**: 
* **p1**: 

## Return value
