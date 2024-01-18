---
ns: VEHICLE
---
## SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX

```c
// 0x9088EB5A43FFB0A1 0xA1A1890E
void SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(Vehicle vehicle, int plateIndex);
```

Sets the vehicle's license plate style to the specified index. Indexes as of b3095:
| Index  | Name            | Image                                        |
|:------:|:---------------:|:--------------------------------------------:|
|    0   | Blue on White 2 | ![BoW2](https://i.imgur.com/oOFmgNP.png)     |
|    1   | Yellow on Black | ![BY](https://i.imgur.com/1zsAUrb.png)       |
|    2   | Yellow on Blue  | ![YoB](https://i.imgur.com/OdoJ1u9.png)      |
|    3   | Blue on White 1 | ![BoW1](https://i.imgur.com/iyIrxUq.png)     |
|    4   | Blue on White 3 | ![BoW3](https://i.imgur.com/1iZoQVE.png)     |
|    5   | North Yankton   | ![Yankton](https://i.imgur.com/UhOmPtz.png)  |
|    6   | eCola           | ![eCola](https://i.imgur.com/ulfzH5a.png)    |
|    7   | Las Venturas    | ![LasVent](https://i.imgur.com/fX4GFJZ.png)  |
|    8   | Liberty City    | ![LC](https://i.imgur.com/Z5WRmz3.png)       |
|    9   | LS Car Meet     | ![CarMeet](https://i.imgur.com/JTMqkfi.png)  |
|    10  | LS Panic        | ![Panic](https://i.imgur.com/Oh5k57l.png)    |
|    11  | LS Pounders     | ![Pounders](https://i.imgur.com/eTJraxn.png) |
|    12  | Sprunk          | ![Sprunk](https://i.imgur.com/kZ6KOzv.png)   |


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

