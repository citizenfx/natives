---
ns: PLAYER
---
## REPORT_CRIME

```c
// 0xE9B09589827545E7 0xD8EB3A44
void REPORT_CRIME(Player player, int crimeType, int wantedLvlThresh);
```

```
PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));  
From am_armybase.ysc.c4:  
PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));  
-----  
This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: pastebin.com/09qSMsN7   
-----  
crimeType:  
1: Firearms possession  
2: Person running a red light ("5-0-5")  
3: Reckless driver  
4: Speeding vehicle (a "5-10")  
5: Traffic violation (a "5-0-5")  
6: Motorcycle rider without a helmet  
7: Vehicle theft (a "5-0-3")  
8: Grand Theft Auto  
9: ???  
10: ???  
11: Assault on a civilian (a "2-40")  
12: Assault on an officer  
13: Assault with a deadly weapon (a "2-45")  
14: Officer shot (a "2-45")  
15: Pedestrian struck by a vehicle  
16: Officer struck by a vehicle  
17: Helicopter down (an "AC"?)  
18: Civilian on fire (a "2-40")  
19: Officer set on fire (a "10-99")  
20: Car on fire  
21: Air unit down (an "AC"?)  
22: An explosion (a "9-96")  
23: A stabbing (a "2-45") (also something else I couldn't understand)  
24: Officer stabbed (also something else I couldn't understand)  
25: Attack on a vehicle ("MDV"?)  
26: Damage to property  
27: Suspect threatening officer with a firearm  
28: Shots fired  
29: ???  
30: ???  
31: ???  
32: ???  
33: ???  
34: A "2-45"  
35: ???  
36: A "9-25"  
37: ???  
38: ???  
39: ???  
40: ???  
41: ???  
42: ???  
43: Possible disturbance  
44: Civilian in need of assistance  
45: ???  
46: ???  
```

## Parameters
* **player**: 
* **crimeType**: 
* **wantedLvlThresh**: 

