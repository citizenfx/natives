---
ns: SYSTEM
---
## COS

```c
// 0xD0FFB162F40A139C 0x00238FE9
float COS(float value);
```

Returns the cosine of the given number.

## Parameters
* **value**: The number of degrees (in degrees, not radians)

## Return value
The cosine of the given number

## Examples
```lua
-- Get the heading
local heading = GetEntityHeading(PlayerPedId())
local cos = Cos(heading)

-- equivalent in lua
local cosLua = math.cos(heading * (math.pi / 180))
```
