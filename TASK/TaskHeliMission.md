---
ns: TASK
---
## TASK_HELI_MISSION

```c
// 0xDAD029E187A2BEB4 0x0C143E97
void TASK_HELI_MISSION(Ped pilot, Vehicle aircraft, Vehicle targetVehicle, Ped targetPed, float destinationX, float destinationY, float destinationZ, int missionFlag, float maxSpeed, float landingRadius, float targetHeading, int unk1, int unk2, Hash unk3, int landingFlags);
```

```
EDITED (8/16/2017)  
DESCRIPTION:  
Allow a ped to fly to a specific destination.  
USAGE:  
-- REQUIRED --  
• pilot = The ped flying the aircraft.  
• aircraft = The aircraft the pilot is flying.  
-- OPTIONAL -- [atleast 1 must be assigned]  
• targetVehicle = The vehicle the pilot will target.  
• targetPed = The ped the pilot will target.  
• destinationX, destinationY, destinationZ = The location the pilot will target.  
-- LOGIC --  
• missionFlag = The type of mission.  
• maxSpeed = The speed in mph that the pilot will limit his/her self to while flying.  
• landingRadius = The distance from the destination that the pilot must be to land.  
• targetHeading = The heading that the pilot will try to achieve while flying.  
• unk1, unk2 = Set to -1 and it will be okay.  
• unk3 = I'm almost sure this is a vehicle record/waypoint recording hash. A value of -1 is for none. Maybe it's a float? Idk.  
• landingFlags = Bit flags used for landing. All I know is:  
0 = Hover over the destination.  
32 = Land on destination.  
1024 = Erratic, crash into nearby obstacles.  
4096 = Rushed movement + Hover over destination  
Known Mission Types:  
4 = FlyToCoord  
8 = FleeFromPed  
9 = CircleAroundTarget  
10 = CopyTargetHeading  
20 = LandNearPed  
21 = Crash  
Example C#:  
Function.Call(Hash.TASK_HELI_MISSION, driver, heli, 0, 0, position.X, position.Y, position.Z, 4, 50.0, 10.0, (position - heli.Position).ToHeading(), -1, -1, -1, 32);  
OLD USAGE: pastebin.com/ndkSjaaW  
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
* **maxSpeed**: 
* **landingRadius**: 
* **targetHeading**: 
* **unk1**: 
* **unk2**: 
* **unk3**: 
* **landingFlags**: 

