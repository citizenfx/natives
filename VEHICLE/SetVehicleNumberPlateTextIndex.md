---
ns: VEHICLE
---
## SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX

```c
// 0x9088EB5A43FFB0A1 0xA1A1890E
void SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(Vehicle vehicle, int plateIndex);
```

Sets the vehicle's license plate style to the specified index.
| Index  | Name            | Image                                                         | Minimum Game Build |
|:------:|:---------------:|:-------------------------------------------------------------:|:------------------:|
|    0   | Blue on White 2 | <img src="https://i.imgur.com/oOFmgNP.png" width="100"></img> | Any                |
|    1   | Yellow on Black | <img src="https://i.imgur.com/1zsAUrb.png" width="100"></img> | Any                |
|    2   | Yellow on Blue  | <img src="https://i.imgur.com/OdoJ1u9.png" width="100"></img> | Any                |
|    3   | Blue on White 1 | <img src="https://i.imgur.com/iyIrxUq.png" width="100"></img> | Any                |
|    4   | Blue on White 3 | <img src="https://i.imgur.com/1iZoQVE.png" width="100"></img> | Any                |
|    5   | North Yankton   | <img src="https://i.imgur.com/UhOmPtz.png" width="100"></img> | Any                |
|    6   | eCola           | <img src="https://i.imgur.com/ulfzH5a.png" width="100"></img> | 3095               |
|    7   | Las Venturas    | <img src="https://i.imgur.com/fX4GFJZ.png" width="100"></img> | 3095               |
|    8   | Liberty City    | <img src="https://i.imgur.com/Z5WRmz3.png" width="100"></img> | 3095               |
|    9   | LS Car Meet     | <img src="https://i.imgur.com/JTMqkfi.png" width="100"></img> | 3095               |
|    10  | LS Panic        | <img src="https://i.imgur.com/Oh5k57l.png" width="100"></img> | 3095               |
|    11  | LS Pounders     | <img src="https://i.imgur.com/eTJraxn.png" width="100"></img> | 3095               |
|    12  | Sprunk          | <img src="https://i.imgur.com/kZ6KOzv.png" width="100"></img> | 3095               |


## Parameters
* **vehicle**: The vehicle to set the plate index for
* **plateIndex**: The index of the plate

## Examples
```lua
-- Get the player's vehicle
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

-- Set the plate index to 1 (Yellow on Black)
SetVehicleNumberPlateTextIndex(vehicle, 1)
```

```js
// Get the player's vehicle
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

// Set the plate index to 1 (Yellow on Black)
SetVehicleNumberPlateTextIndex(vehicle, 1);
```

```cs
using static CitizenFX.Core.Native.API;

// Get the player's vehicle
Vehicle vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

// Set the plate index to 1 (Yellow on Black)
SetVehicleNumberPlateTextIndex(vehicle, 1);
```

