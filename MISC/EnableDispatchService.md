---
ns: MISC
aliases: ["0xDC0F817884CDD856"]
---
## ENABLE_DISPATCH_SERVICE

```c
// 0xDC0F817884CDD856 0x0B710A51
void ENABLE_DISPATCH_SERVICE(int dispatchService, BOOL toggle);
```

```
Directly from R*:  
enum eDispatchType : UINT16  
{  
    DT_PoliceAutomobile = 1,  
    DT_PoliceHelicopter = 2,  
    DT_FireDepartment = 3,  
    DT_SwatAutomobile = 4,  
    DT_AmbulanceDepartment = 5,  
    DT_PoliceRiders = 6,  
    DT_PoliceVehicleRequest = 7,  
    DT_PoliceRoadBlock = 8,  
    DT_PoliceAutomobileWaitPulledOver = 9,  
    DT_PoliceAutomobileWaitCruising = 10,  
    DT_Gangs = 11,  
    DT_SwatHelicopter = 12,  
    DT_PoliceBoat = 13,  
    DT_ArmyVehicle = 14,  
    DT_BikerBackup = 15  
};  
By making toggle false it disables the dispatch.  
curious if this is what they used when you toggled on and off cops in a GTA IV freemode you hosted. Sad they got rid of the option to make a private session without cops.  
Also on x360 seems with or without neverWanted on, setting these to all false in SP of course doesn't seem to work. I would understand getting stars, but cops are still dispatched and combat you.  
```

## Parameters
* **dispatchService**: 
* **toggle**: 

