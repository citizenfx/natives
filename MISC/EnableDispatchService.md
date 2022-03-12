---
ns: MISC
aliases: ["0xDC0F817884CDD856"]
---
## ENABLE_DISPATCH_SERVICE

```c
// 0xDC0F817884CDD856 0x0B710A51
void ENABLE_DISPATCH_SERVICE(int dispatchService, BOOL toggle);
```

List of dispatch services:

```cpp
enum DispatchType
{
	DT_Invalid = 0,
	DT_PoliceAutomobile,
	DT_PoliceHelicopter,
	DT_FireDepartment,
	DT_SwatAutomobile,
	DT_AmbulanceDepartment,
	DT_PoliceRiders,
	DT_PoliceVehicleRequest,
	DT_PoliceRoadBlock,
	DT_PoliceAutomobileWaitPulledOver,
	DT_PoliceAutomobileWaitCruising,
	DT_Gangs,
	DT_SwatHelicopter,
	DT_PoliceBoat,
	DT_ArmyVehicle,
	DT_BikerBackup = 15
};
```

## Parameters
* **dispatchService**: 
* **toggle**: 

