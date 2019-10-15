---
ns: VEHICLE
aliases: ["0x428BACCDF5E26EAD"]
---
## SET_VEHICLE_CAN_SAVE_IN_GARAGE

```c
// 0x428BACCDF5E26EAD 0x1604C2F5
void SET_VEHICLE_CAN_SAVE_IN_GARAGE(Vehicle vehicle, BOOL toggle);
```

```
if (!ENTITY::DOES_ENTITY_BELONG_TO_THIS_SCRIPT(g_10A5A._f8B[a_0/*1*/], 1)) {  
sub_20af7("No longer needed: Vehicle owned by other script");  
if ((((a_0 == 24) && (!sub_3a04(g_10A5A._f8B[a_0/*1*/]))) && (!sub_39c9(g_10A5A._f8B[a_0/*1*/]))) && (ENTITY::GET_ENTITY_MODEL(g_10A5A._f8B[a_0/*1*/]) != ${monster})) {  
    VEHICLE::_428BACCDF5E26EAD(g_10A5A._f8B[a_0/*1*/], 1);  
}  
g_10A5A._f8B[a_0/*1*/] = 0;  
g_10A5A[a_0/*1*/] = 1;  
sub_20ada(a_0);  
return ;  
		}  
```

## Parameters
* **vehicle**: 
* **toggle**: 

