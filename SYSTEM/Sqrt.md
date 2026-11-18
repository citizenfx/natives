---
ns: SYSTEM
---
## SQRT

```c
// 0x71D93B57D07F9804 0x145C7701
float SQRT(float value);
```

Returns the square root of value.

Note: Prefer the built-in equivalent: `math.sqrt` (Lua), `Math.sqrt` (JS), and `Math.Sqrt` (C#).

## Parameters
* **value**: The number to take the square root of. Must be non-negative.

## Return value
The square root of value.

## Examples
```lua
local root = Sqrt(16.0) -- 4.0
```

```js
const root = Sqrt(16.0); // 4
```

```cs
using static CitizenFX.Core.Native.API;
float root = Sqrt(16.0f); // 4
```
