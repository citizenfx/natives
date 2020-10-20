---
ns: BRAIN
---
## TASK_PLANE_MISSION

```c
// 0x23703CD154E83B88 0x1D007E65
void TASK_PLANE_MISSION(Ped pilot, Vehicle aircraft, Vehicle targetVehicle, Ped targetPed, float destinationX, float destinationY, float destinationZ, int missionFlag, float angularDrag, float unk, float targetHeading, float maxZ, float minZ);
```

```
EDITED (7/13/2017)  
NOTE: If you want air combat, AI::TASK_COMBAT_PED (while your pilot is in an aircraft) also does the same thing as this native.  
DESCRIPTION:  
Ever wish your buddy could shoot down one of your enemies for you? Ever wanted an auto-pilot? Well look no further! This is the native for you! (Ped intelligence may vary)  
USAGE:  
-- REQUIRED --  
• pilot = The ped flying the aircraft.  
• aircraft = The aircraft the pilot is flying  
-- OPTIONAL -- [atleast 1 must be assigned]  
• targetVehicle = The vehicle the pilot will target.  
• targetPed = The ped the pilot will target.  
• destinationX, destinationY, destinationZ = The location the pilot will target.  
-- LOGIC --  
• missionFlag = The type of mission. pastebin.com/R8x73dbv  
• angularDrag = The higher the value, the slower the plane will rotate. Value ranges from 0 - Infinity.  
• unk = Set to 0, and you'll be fine.  
• targetHeading = The target angle (from world space north) that the pilot will try to acheive before executing an attack/landing.  
• maxZ = Maximum Z coordinate height for flying.  
• minZ = Minimum Z coordinate height for flying.  
Z: 2,700 is the default max height a pilot will be able to fly. Anything greater and he will fly downward until reaching 2,700 again.  
Mission Types (incase you don't like links..):  
0 = None  
1 = Unk  
2 = CTaskVehicleRam  
3 = CTaskVehicleBlock  
4 = CTaskVehicleGoToPlane  
5 = CTaskVehicleStop  
6 = CTaskVehicleAttack  
7 = CTaskVehicleFollow  
8 = CTaskVehicleFleeAirborne  
9 = CTaskVehicleCircle  
10 = CTaskVehicleEscort  
15 = CTaskVehicleFollowRecording  
16 = CTaskVehiclePoliceBehaviour  
17 = CTaskVehicleCrash  
Example C#:  
Function.Call(Hash.TASK_PLANE_MISSION, pilot, vehicle, 0, Game.Player.Character, 0, 0, 0, 6, 0f, 0f, 0f, 2500.0f, -1500f);  
Example C++  
AI::TASK_PLANE_MISSION(pilot, vehicle, 0, PLAYER::GET_PLAYER_PED(PLAYER::GET_PLAYER_INDEX()), 0, 0, 0, 6, 0.0, 0.0, 0.0, 2500.0, -1500.0);  
[DEPRECATED] EXAMPLE USAGE:  
pastebin.com/gx7Finsk  
```

```
NativeDB Added Parameter 14: Any p13
```

## Parameters
* **pilot**: 
* **aircraft**: 
* **targetVehicle**: 
* **targetPed**: 
* **destinationX**: 
* **destinationY**: 
* **destinationZ**: 
* **missionFlag**: 
* **angularDrag**: 
* **unk**: 
* **targetHeading**: 
* **maxZ**: 
* **minZ**: 

