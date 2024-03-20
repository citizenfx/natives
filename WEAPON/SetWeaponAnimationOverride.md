---
ns: WEAPON
---
## SET_WEAPON_ANIMATION_OVERRIDE

```c
// 0x1055AC3A667F09D9 0xA5DF7484
void SET_WEAPON_ANIMATION_OVERRIDE(Ped ped, Hash animStyle);
```

Overrides a ped's weapon animation style, as defined in `weaponanimations.meta`.

```c
enum animStyle { // not actual enum, just a list of possible values
	"Ballistic",  
	"Default",  
	"Fat",  
	"Female",  
	"FirstPerson",  
	"FirstPersonAiming",  
	"FirstPersonFranklin",  
	"FirstPersonFranklinAiming",  
	"FirstPersonFranklinRNG",  
	"FirstPersonFranklinScope",  
	"FirstPersonMPFemale",  
	"FirstPersonMichael",  
	"FirstPersonMichaelAiming",  
	"FirstPersonMichaelRNG",  
	"FirstPersonMichaelScope",  
	"FirstPersonRNG",  
	"FirstPersonScope",  
	"FirstPersonTrevor",  
	"FirstPersonTrevorAiming",  
	"FirstPersonTrevorRNG",  
	"FirstPersonTrevorScope",  
	"Franklin",  
	"Gang",  
	"Gang1H",  
	"GangFemale",  
	"Hillbilly",  
	"MP_F_Freemode",  
	"Michael",  
	"SuperFat",  
	"Trevor"
}
```

```
NativeDB Introduced: v323
```

## Parameters
* **ped**: The Ped whose weapon animation is to be overridden
* **animStyle**: A hash of the animation style to be applied. Use `GET_HASH_KEY` to convert animation style strings to their respective hash values.


## Examples
```lua
--  Retrieve the player ped.
local playerPed = PlayerPedId()

-- Convert the string "Gang" to a hash key.
local animStyle = GetHashKey("Gang")

-- Apply the "Gang" weapon animation style to the player's ped. Overriding the default animations with those 
-- specified for the "Gang" style.
SetWeaponAnimationOverride(playerPed, animStyle)
```

```js
// Retrieve the player ped.
const playerPed = PlayerPedId();

// Convert the string "Gang" to a hash key.
const animStyle = GetHashKey("Gang");

// Apply the "Gang" weapon animation style to the player's ped. Overriding the default animations with those
// specified for the "Gang" style.
SetWeaponAnimationOverride(playerPed, animStyle);
```

```csharp
using static CitizenFX.Core.Native.API;

// Retrieve the player ped.
Ped playerPed = PlayerPedId();

// Convert the string "Gang" to a hash key.
uint animStyle = (uint)GetHashKey("Gang");

// Apply the "Gang" weapon animation style to the player's ped. Overriding the default animations with those
// specified for the "Gang" style.
SetWeaponAnimationOverride(playerPed, animStyle);
```