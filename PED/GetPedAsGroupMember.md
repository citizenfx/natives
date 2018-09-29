---
ns: PED
---
## GET_PED_AS_GROUP_MEMBER

```c
// 0x51455483CF23ED97 0x9AA3CC8C
Ped GET_PED_AS_GROUP_MEMBER(int groupID, int memberNumber);
```

```
from fm_mission_controller.c4 (variable names changed for clarity):  
int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID());  
PED::GET_GROUP_SIZE(group, &unused, &groupSize);  
if (groupSize >= 1) {  
. . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) {  
. . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber);  
. . . . . . . . //and so on  
```

## Parameters
* **groupID**: 
* **memberNumber**: 

## Return value
