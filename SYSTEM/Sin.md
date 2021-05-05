---
ns: SYSTEM
---
## SIN

```c
// 0x0BADBFA3B172435F 0xBF987F58
float SIN(float value);
```

Returns the sine of the given number.

## Parameters
* **value**: The number of degrees (in degrees, not radians)

## Return value
The sine of the given number

## Examples
```lua
-- Get the heading
local heading = GetEntityHeading(PlayerPedId())
local sin = Sin(heading)

-- equivalent in lua
local sinLua = math.sin(heading * (math.pi / 180))
```
