---
ns: VEHICLE
aliases: ["0xB8FBC8B1330CA9B4"]
---
## _SET_VEHICLE_JET_ENGINE_ON

```c
// 0xB8FBC8B1330CA9B4 0x51E0064F
void _SET_VEHICLE_JET_ENGINE_ON(Vehicle vehicle, BOOL toggle);
```

```
VEHICLE::SET_VEHICLE_ENGINE_ON is not enough to start jet engines when not inside the vehicle. But with this native set to true it works: youtu.be/OK0ps2fDpxs   
i.imgur.com/7XA14pX.png  
Certain planes got jet engines.  
void VEHICLE::_SET_VEHICLE_JET_ENGINE_ON(scrNativeCallContext *args)  
{  
  bool bOn; // bl@1  
  CVehicle *pVehicle; // rax@1  
  scrNativeCallContextArgStruct *pArgs; // rax@1  
  pArgs = args->pArgs;  
  bOn = pArgs->a2.INT32 != 0;  
  pVehicle = getEntityAddressIfVehicle(pArgs->a1.INT32);  
  if ( pVehicle )  
  {  
    pVehicle->bitmapBulletProofTires &= 0xFBu;  
    pVehicle->bitmapBulletProofTires |= 4 * bOn;  
  }  
} // sfink  
```

## Parameters
* **vehicle**: 
* **toggle**: 

