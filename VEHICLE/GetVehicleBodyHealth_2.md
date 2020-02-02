---
ns: VEHICLE
---
## _GET_VEHICLE_BODY_HEALTH_2

```c
// 0xB8EF61207C2393A9
float _GET_VEHICLE_BODY_HEALTH_2(Vehicle vehicle);
```

```
0 min 100 max  
starts at 100  
Seams to have health zones  
Front of vehicle when damaged goes from 100-50 and stops at 50.  
Rear can be damaged from 100-0  
Only tested with two cars.  
any idea how this differs from the first one?  
--  
May return the vehicle health on a scale of 0.0 - 100.0 (needs to be confirmed)  
example:  
v_F = ENTITY::GET_ENTITY_MODEL(v_3);  
if (((v_F == ${tanker}) || (v_F == ${armytanker})) || (v_F == ${tanker2})) {  
    if (VEHICLE::_GET_VEHICLE_BODY_HEALTH_2(v_3) <= 1.0) {  
        NETWORK::NETWORK_EXPLODE_VEHICLE(v_3, 1, 1, -1);  
    }  
}  
```

```
NativeDB Added Parameter 2: Any p1
NativeDB Added Parameter 3: Any p2
NativeDB Added Parameter 4: Any p3
NativeDB Added Parameter 5: Any p4
NativeDB Added Parameter 6: Any p5
NativeDB Added Parameter 7: Any p6
```

## Parameters
* **vehicle**: 

## Return value
