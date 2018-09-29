---
ns: VEHICLE
---
## SET_TAXI_LIGHTS

```c
// 0x598803E85E8448D9 0x68639D85
void SET_TAXI_LIGHTS(Vehicle vehicle, BOOL state);
```

```
This is not tested - it's just an assumption.  
Doesn't seem to work.  I'll try with an int instead. --JT  
Read the scripts, im dumpass.   
Doesn't work at all, wether with an bool neither an int  
                            if (!VEHICLE::IS_TAXI_LIGHT_ON(l_115)) {  
                                VEHICLE::SET_TAXI_LIGHTS(l_115, 1);  
                            }  
```

## Parameters
* **vehicle**: 
* **state**: 

