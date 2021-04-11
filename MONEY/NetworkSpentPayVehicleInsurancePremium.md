---
ns: MONEY
---
## NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM

```c
// 0x9FF28D88C766E3E8 0x4E665BB2
void NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM(int amount, Hash vehicleModel, int* networkHandle, BOOL notBankrupt, BOOL hasTheMoney);
```

```
According to how I understood this in the freemode script alone,
The first parameter is determined by a function named, func_5749 within the freemode script which has a list of all the vehicles and a set price to return which some vehicles deals with globals as well. So the first parameter is basically the set in stone insurance cost it's gonna charge you for that specific vehicle model.
The second parameter whoever put it was right, they call GET_ENTITY_MODEL with the vehicle as the paremeter.
The third parameter is the network handle as they call their little struct<13> func or atleast how the script decompiled it to look which in lamens terms just returns the network handle of the previous owner based on DECOR_GET_INT(vehicle, "Previous_Owner").
The fourth parameter is a bool that returns true/false depending on if your bank balance is greater then 0.
The fifth and last parameter is a bool that returns true/false depending on if you have the money for the car based on the cost returned by func_5749. In the freemode script eg,
bool hasTheMoney = MONEY::_GET_BANK_BALANCE() < carCost.
```

## Parameters
* **amount**: 
* **vehicleModel**: 
* **networkHandle**: 
* **notBankrupt**: 
* **hasTheMoney**: 

