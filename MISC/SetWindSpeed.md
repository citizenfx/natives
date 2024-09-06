---
ns: MISC
---
## SET_WIND_SPEED

```c
// 0xEE09ECEDBABE47FC 0x45705F94
void SET_WIND_SPEED(float speed);
```

Using this native will clamp the wind speed value to a range of 0.0 - 12.0. The wind speed will stay persistent until it is reset (see examples).

## Parameters
* **speed**: wind speed in meters per second

## Examples
```lua
-- Sets the wind speed to 0 meters per second
SetWind(0)

-- Sets the wind to 11.99 m/s
SetWind(11.99)

-- Allows the game dynamically change the wind speed again
SetWind(-1)
```

```js
// Sets the wind speed to 0 meters per second
SetWind(0);

// Sets the wind to 11.99 m/s
SetWind(11.99);

// Allows the game dynamically change the wind speed again
SetWind(-1);
```

```cs
// Sets the wind speed to 0 meters per second
SetWind(0f);

// Sets the wind to 11.99 m/s
SetWind(11.99f);

// Allows the game dynamically change the wind speed again
SetWind(-1f);
```
