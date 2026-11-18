---
ns: SYSTEM
---
## SHIFT_LEFT

```c
// 0xEDD95A39E5544DE8 0x314CC6CD
int SHIFT_LEFT(int value, int bitShift);
```

Left bit shifts a value.

Note: Prefer the `<<` operator, available in Lua, JS, and C#.

## Parameters
* **value**: The integer to shift.
* **bitShift**: The number of bits to shift by.

## Return value
The value shifted left by bitShift bits.

## Examples
```lua
local shifted = ShiftLeft(1, 4) -- 16
```

```js
const shifted = ShiftLeft(1, 4); // 16
```

```cs
using static CitizenFX.Core.Native.API;
int shifted = ShiftLeft(1, 4); // 16
```
