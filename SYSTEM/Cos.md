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
* **value**: The angle in degrees.

## Return value
The cosine of the given number

## Examples
```lua
-- Get the heading
local heading = GetEntityHeading(PlayerPedId())
local cos = Cos(heading)
```

```js
const heading = GetEntityHeading(PlayerPedId());
const cos = Cos(heading);
```

```cs
using static CitizenFX.Core.Native.API;
float heading = GetEntityHeading(PlayerPedId());
float cos = Cos(heading);
```
