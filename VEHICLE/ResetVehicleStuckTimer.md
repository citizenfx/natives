---
ns: VEHICLE
---
## RESET_VEHICLE_STUCK_TIMER

```c
// 0xD7591B0065AFAA7A 0xEF2A6016
void RESET_VEHICLE_STUCK_TIMER(Vehicle vehicle, int nullAttributes);
```

```
The inner function has a switch on the second parameter. It's the stuck timer index.  
Here's some pseudo code I wrote for the inner function:  
void __fastcall NATIVE_RESET_VEHICLE_STUCK_TIMER_INNER(CUnknown* unknownClassInVehicle, int timerIndex)  
{  
	switch (timerIndex)  
	{  
	case 0:  
unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
	case 1:  
unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
	case 2:  
unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
	case 3:  
unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
	case 4:  
unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
break;  
	};  
}  
```

## Parameters
* **vehicle**: 
* **nullAttributes**: 

