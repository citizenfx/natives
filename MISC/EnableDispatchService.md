---
ns: MISC
aliases: ["0xDC0F817884CDD856"]
---
## ENABLE_DISPATCH_SERVICE

```c
// 0xDC0F817884CDD856 0x0B710A51
void ENABLE_DISPATCH_SERVICE(int dispatchService, BOOL toggle);
```

Enables or disables the specified 'dispatch service' type. 'Dispatch services' are used for spawning AI response peds/vehicles for events such as a fire in the street (type 3 - DT_FireDepartment), or gunfire in a gang area (type 11 - DT_Gangs).

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

Note that 'dispatch service' has nothing to do with the police scanner (audio), to toggle that, use [SET_AUDIO_FLAG](#_0xB9EFD5C25018725A) with `'PoliceScannerDisabled'`.

## Parameters
* **dispatchService**: The ID of the dispatch service to toggle.
* **toggle**: True to enable the dispatch service, false to disable the dispatch service.

