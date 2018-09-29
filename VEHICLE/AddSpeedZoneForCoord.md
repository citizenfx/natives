---
ns: VEHICLE
aliases: ["0x2CE544C68FB812A0"]
---
## _ADD_SPEED_ZONE_FOR_COORD

```c
// 0x2CE544C68FB812A0 0xD6685803
int _ADD_SPEED_ZONE_FOR_COORD(float x, float y, float z, float radius, float speed, BOOL p5);
```

```
This is used to add a speedzone on a position.  
Example usage C#:  
uint speedZone = Function.Call<uint>((Hash) 0x2CE544C68FB812A0, Game.PlayerPed.Position.X, Game.PlayerPed.Position.Y, Game.PlayerPed.Position.Z, 100.0f, 0.0f, false);  
(Thanks to alexguirre for his help!)  
==========================================  
What is the point in adding a speed zone? Does it just generally affect the speed NPCs will drive? I can imagine running this on every section of the interstate setting it to 3 MPH rip.  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **radius**: 
* **speed**: 
* **p5**: 

## Return value
