---
ns: VEHICLE
aliases: ["0x1033371FC8E842A7"]
---
## _REMOVE_SPEED_ZONE

```c
// 0x1033371FC8E842A7 0x0C0332A6
BOOL _REMOVE_SPEED_ZONE(int speedzone);
```

```
Used to remove a speedzone.  
This is the speed zone native.  
Example usage C#:  
uint speedZone = Function.Call<uint>((Hash) 0x2CE544C68FB812A0, Game.PlayerPed.Position.X, Game.PlayerPed.Position.Y, Game.PlayerPed.Position.Z, 100.0f, 0.0f, false);  
bool speedZoneClosed = Function.Call<bool>((Hash) 0x1033371FC8E842A7, speedZone);  
(Thanks to alexguirre for his help!)  
```

## Parameters
* **speedzone**: 

## Return value
