---
ns: WEAPON
aliases: ["SET_WEAPON_SMOKEGRENADE_ASSIGNED"]
---
## IS_FLASH_LIGHT_ON

```c
// 0x4B7620C47217126C 0x76876154
BOOL IS_FLASH_LIGHT_ON(Ped ped);
```

Determines if the flashlight attachment on a ped's currently equipped weapon is active.


## Parameters
* **ped**: The Ped to check for an active flashlight.

## Return value
Returns `true` if the flashlight on the ped's currently equipped weapon is turned on, otherwise `false`.

## Examples
```lua
--  Retrieve the player ped.
local playerPed = PlayerPedId()

--  Check if the flashlight is on for the player's currently equipped weapon.
local isFlashlightOn = IsFlashLightOn(playerPed)

if isFlashlightOn then
    print("Flashlight is on!")
else
    print("Flashlight is off.")
end
```

```js
//  Retrieve the player ped.
const playerPed = PlayerPedId();

//  Check if the flashlight is on for the player's currently equipped weapon.
const isFlashlightOn = IsFlashLightOn(playerPed);

if (isFlashlightOn) {
    console.log("Flashlight is on!");
} else {
    console.log("Flashlight is off.");
}
```

```csharp
using static CitizenFX.Core.Native.API;

//  Retrieve the player ped.
Ped playerPed = PlayerPedId();

//  Check if the flashlight is on for the player's currently equipped weapon.
bool isFlashlightOn = IsFlashLightOn(playerPed);

if (isFlashlightOn) {
    Debug.WriteLine("Flashlight is on!");
} else {
    Debug.WriteLine("Flashlight is off.");
}
```