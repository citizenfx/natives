---
ns: SYSTEM
---
## CEIL

```c
// 0x11E019C8F43ACC8A 0xD536A1DF
int CEIL(float value);
```

Rounds a float up to the nearest whole number, toward positive infinity.

Note: Prefer the built-in equivalent: `math.ceil` (Lua), `Math.ceil` (JS), and `Math.Ceiling` (C#).

## Parameters
* **value**: The number to round up.

## Return value
The value rounded up to the nearest whole number.

## Examples
```lua
local ceiled = Ceil(1.2) -- 2
```

```js
const ceiled = Ceil(1.2); // 2
```

```cs
using static CitizenFX.Core.Native.API;
int ceiled = Ceil(1.2f); // 2
```
