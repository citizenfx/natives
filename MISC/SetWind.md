---
ns: MISC
---
## SET_WIND

```c
// 0xAC3A74E8384A9919 0xC6294698
void SET_WIND(float speed);
```

Sets the the raw wind speed value. The wind speed will stay persistent until it is reset (see examples).

## Parameters
* **speed**: The wind speed (clamped to between 0.0 and 1.0)

## Examples
```lua
-- Stops all and any wind
SetWind(0)

-- Sets the wind to 6 m/s
SetWind(0.5)

-- Allows the game dynamically change the wind again
SetWind(-1)
```

```js
// Stops all and any wind
SetWind(0);

// Sets the wind to 6 m/s
SetWind(0.5);

// Allows the game dynamically change the wind again
SetWind(-1);
```

```cs
// Stops all and any wind
SetWind(0f);

// Sets the wind to 6 m/s
SetWind(0.5f);

// Allows the game dynamically change the wind again
SetWind(-1f);
```
