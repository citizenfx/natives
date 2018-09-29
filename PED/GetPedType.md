---
ns: PED
---
## GET_PED_TYPE

```c
// 0xFF059E1E4C01E63C 0xB1460D43
int GET_PED_TYPE(Ped ped);
```

```
Ped Types: (ordered by return priority)  
Michael = 0  
Franklin = 1  
Trevor = 2  
Army = 29  
Animal = 28  
SWAT = 27  
LSFD = 21  
Paramedic = 20  
Cop = 6  
Male = 4  
Female = 5   
Human = 26  
Note/Exception  
hc_gunman : 4 // Mix male and female  
hc_hacker : 4 // Mix male and female  
mp_f_misty_01 : 4 // Female character  
s_f_y_ranger_01 : 5 // Ranger  
s_m_y_ranger_01 : 4 // Ranger  
s_m_y_uscg_01 : 6 // US Coast Guard  
```

## Parameters
* **ped**: 

## Return value
