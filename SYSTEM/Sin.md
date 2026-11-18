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
* **value**: The angle in degrees.

## Return value
The sine of the given number

## Examples
```lua
-- Get the heading
local heading = GetEntityHeading(PlayerPedId())
local sin = Sin(heading)
```

```js
const heading = GetEntityHeading(PlayerPedId());
const sin = Sin(heading);
```

```cs
using static CitizenFX.Core.Native.API;
float heading = GetEntityHeading(PlayerPedId());
float sin = Sin(heading);
```
