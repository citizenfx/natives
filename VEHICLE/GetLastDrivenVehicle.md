---
ns: VEHICLE
aliases: ["0xB2D06FAEDE65B577"]
---
## GET_LAST_DRIVEN_VEHICLE

```c
// 0xB2D06FAEDE65B577 0xFEB0C0C8
Vehicle GET_LAST_DRIVEN_VEHICLE();
```

```
Not exactly sure on this one, but here's a snippet of code:  
if (PED::IS_PED_IN_ANY_VEHICLE(PLAYER::PLAYER_PED_ID(), 0)) {  
    v_2 = PED::GET_VEHICLE_PED_IS_IN(PLAYER::PLAYER_PED_ID(), 0);  
} else {   
    v_2 = VEHICLE::_B2D06FAEDE65B577();  
}  
```

## Return value
