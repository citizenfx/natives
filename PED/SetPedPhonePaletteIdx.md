---
ns: PED
aliases: ["0x83A169EABCDB10A2"]
---
## SET_PED_PHONE_PALETTE_IDX

```c
// 0x83A169EABCDB10A2
void SET_PED_PHONE_PALETTE_IDX(Ped ped, int index);
```

Sets the palette index of a ped's phone.

| Value | Color      |
| :---: | :-----:    |
|  `0`  | Light Blue |
|  `1`  | Green      |
|  `2`  | Red        |
|  `3`  | Orange     |
|  `4`  | Grey       |
|  `5`  | Purple     |
|  `6`  | Pink       |

```
NativeDB Introduced: v323
```

## Parameters
* **ped**: The Ped whose phone palette is to be set.
* **index**: The index of the color palette to apply to the ped's phone.

## Examples
```lua
-- Define a table with color names mapped to their corresponding palette indices for phone colors
local PhoneColors = {
    Blue = 0,
    Green = 1,
    Red = 2,
    Orange = 3,
    Grey = 4,
    Purple = 5,
    Pink = 6
}

-- Retrieve the current player ped
local playerPed = PlayerPedId()

-- Set the phone color of the player's ped to Green using the corresponding index from the PhoneColors table
SetPedPhonePaletteIdx(playerPed, PhoneColors.Green)
```

```js
// Define an object with color names mapped to their corresponding palette indices for phone colors
const PhoneColors = {
    Blue: 0,
    Green: 1,
    Red: 2,
    Orange: 3,
    Grey: 4,
    Purple: 5,
    Pink: 6
};

// Retrieve the current player ped
const playerPed = PlayerPedId();

// Set the phone color of the player's ped to Green using the corresponding index from the PhoneColors object
SetPedPhonePaletteIdx(playerPed, PhoneColors.Green);
```

```cs
using static CitizenFX.Core.Native.API;

// Define an enum with color names and their corresponding indices
public enum PhoneColors
{
    Blue = 0,
    Green = 1,
    Red = 2,
    Orange = 3,
    Grey = 4,
    Purple = 5,
    Pink = 6
}

// Retrieve the current player ped
int playerPed = PlayerPedId();

// Set the phone color of the player's ped to Green using the enum value
SetPedPhonePaletteIdx(playerPed, (int)PhoneColors.Green);
```
