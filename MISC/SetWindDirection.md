---
ns: MISC
---
## SET_WIND_DIRECTION

```c
// 0xEB0F4468467B4528 0x381AEEE9
void SET_WIND_DIRECTION(float direction);
```

Sets the wind direction. The wind direction will stay persistent until it is reset (see examples).

## Parameters
* **direction**: the [wind direction](https://en.wikipedia.org/wiki/Wind_direction) in radians

## Examples
```lua
-- 180 degrees, wind will blow from the south
SetWindDirection(math.rad(180.0))

-- Allows the game to dynamically change the wind direction again
SetWindDirection(-1)
```

```js
// 180 degrees, wind will blow from the south
SetWindDirection(180.0 * (Math.PI / 180));

// Allows the game to dynamically change the wind direction again
SetWindDirection(-1);
```

```cs
// 180 degrees, wind will blow from the south
SetWindDirection(3.1415f);

// Allows the game to dynamically change the wind direction again
SetWindDirection(-1f);
```
