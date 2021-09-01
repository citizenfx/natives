---
ns: VEHICLE
---
## SET_VEHICLE_EXTRA

```c
// 0x7EE3A3C5E4A40CC9 0x642D065C
void SET_VEHICLE_EXTRA(Vehicle vehicle, int extraId, BOOL disable);
```

```
Note: only some vehicle have extras  
extra ids are from 1 - 9 depending on the vehicle  
-------------------------------------------------  
^ not sure if outdated or simply wrong. Max extra ID for b944 is 14  

Definitely 14
-------------------------------------------------  
p3 is not a on/off toggle. mostly 0 means on and 1 means off.  
not sure if it really should be a BOOL.  
-------------------------------------------------  
Confirmed p3 does not work as a bool. Changed to int. [0=on, 1=off]  
This was listed as p2 p2 is the int for the extra p3 is also a int as it is not a bool toggle 0 = on 1 = OFF in this case

function SwapInt(int)
  if int == 0 then
      int == 1
  else
      int == 0
  end
end

(this lua function could be useful for this)
```

## Parameters
* **vehicle**: 
* **extraId**: 
* **disable**: 

