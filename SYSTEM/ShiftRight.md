---
ns: SYSTEM
---
## SHIFT_RIGHT

```c
// 0x97EF1E5BCE9DC075 0x352633CA
int SHIFT_RIGHT(int value, int bitShift);
```

Right bit shifts a value.

Note: Prefer the `>>` operator, available in Lua, JS, and C#.

## Parameters
* **value**: The integer to shift.
* **bitShift**: The number of bits to shift by.

## Return value
The value shifted right by bitShift bits.

## Examples
```lua
local shifted = ShiftRight(16, 4) -- 1
```

```js
const shifted = ShiftRight(16, 4); // 1
```

```cs
using static CitizenFX.Core.Native.API;
int shifted = ShiftRight(16, 4); // 1
```
