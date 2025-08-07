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

```c
enum eDispatchType
{
	DT_Invalid = 0,
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
	DT_SwatHelicopter = 13,
	DT_PoliceBoat = 14,
	DT_ArmyVehicle = 15,
	DT_BikerBackup = 15
};
```

Note that 'dispatch service' has nothing to do with the police scanner (audio), to toggle that, use [SET_AUDIO_FLAG](#_0xB9EFD5C25018725A) with `'PoliceScannerDisabled'`.

## Parameters
* **dispatchService**: The ID of the dispatch service to toggle.
* **toggle**: True to enable the dispatch service, false to disable the dispatch service.

