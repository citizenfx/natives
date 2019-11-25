---
ns: MISC
---
## CREATE_INCIDENT_WITH_ENTITY

```c
// 0x05983472F0494E60 0xBBC35B03
BOOL CREATE_INCIDENT_WITH_ENTITY(int dispatchService, Ped ped, int numUnits, float radius, int* outIncidentID);
```

```
p0 could be type (valueused in scripts: 14, 7, 5, 3, 11)  
p1 is a return from get_player_ped() in am_gang_call.c, but player_ped_id() in other (non am) scripts.  
p3 is usually 0f or 3f  
=====================================================  
enum IncidentTypes  
{  
    FireDepartment = 3,  
    Paramedics = 5,  
    Police = 7,  
    PedsInCavalcades = 11,   
    Merryweather = 14  
};  
As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
Side Note 2: I say it breaks as if you call this proper,  
if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
=====================================================  
```

```
NativeDB Added Parameter 6: Any p5
NativeDB Added Parameter 7: Any p6
```

## Parameters
* **dispatchService**: 
* **ped**: 
* **numUnits**: 
* **radius**: 
* **outIncidentID**: 

## Return value
