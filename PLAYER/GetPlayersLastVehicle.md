---
ns: PLAYER
---
## GET_PLAYERS_LAST_VEHICLE

```c
// 0xB6997A7EB3F5C8C0 0xE2757AC1
Vehicle GET_PLAYERS_LAST_VEHICLE();
```

### Warning
This native will return `0` if the last vehicle the player was in was destroyed.

### Alternative
You can use [GET_VEHICLE_PED_IS_IN](#_0x9A9112A0FE9A4713), which will actually get the last vehicle, even if it was destroyed.

## Return value
A vehicle handle containing the last player's vehicle.
