---
ns: VEHICLE
---
## SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX

```c
// 0x9088EB5A43FFB0A1 0xA1A1890E
void SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(Vehicle vehicle, int plateIndex);
```

### Plate Styles

| Index | Description             |
|-------|-------------------------|
| 0     | Blue on White1          |
| 1     | Yellow on Black         |
| 2     | Yellow on Blue          |
| 3     | Blue on White2          |
| 4     | Blue on White "SA EXEMPT" |
| 5     | North Yankton           |
| 6     | eCola                   |
| 7     | Las Venturas            |
| 8     | Liberty City            |
| 9     | LS Car Meet             |
| 10    | LS Panic                |
| 11    | LS Pounders             |
| 12    | Sprunk                  |

## Parameters
* **vehicle**: The vehicle handle.
* **plateIndex**: The style to use for the plate, see plate styles.

