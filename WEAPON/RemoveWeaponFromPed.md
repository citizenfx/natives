---
ns: WEAPON
---
## REMOVE_WEAPON_FROM_PED

```c
// 0x4899CB088EDF59B8 0x9C37F220
void REMOVE_WEAPON_FROM_PED(Ped ped, Hash weaponHash);
```

```
This native removes a specified weapon from your selected ped.  
Weapon Hashes: pastebin.com/0wwDZgkF  
Example:  
C#:  
Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);  
C++:  
WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);  
The code above removes the knife from the player.  
```

## Parameters
* **ped**: 
* **weaponHash**: 

