---
ns: SYSTEM
---
## POW

```c
// 0xE3621CC40F31FE2E 0x85D134F8
float POW(float base, float exponent);
```

Returns base raised to the power of exponent.

Note: Prefer the built-in equivalent: `math.pow` (Lua), `Math.pow` (JS), and `Math.Pow` (C#).

## Parameters
* **base**: The base number.
* **exponent**: The exponent.

## Return value
The result of base raised to the exponent.

## Examples
```lua
local power = Pow(2.0, 8.0) -- 256.0
```

```js
const power = Pow(2.0, 8.0); // 256
```

```cs
using static CitizenFX.Core.Native.API;
float power = Pow(2.0f, 8.0f); // 256
```
