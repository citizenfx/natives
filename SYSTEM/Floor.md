---
ns: SYSTEM
---
## FLOOR

```c
// 0xF34EE736CF047844 0x32E9BE04
int FLOOR(float value);
```

Rounds a float down to the nearest whole number, toward negative infinity.

## Parameters
* **value**: The number to round down.

## Return value
The value rounded down to the nearest whole number.

## Examples
```lua
local floored = Floor(1.7) -- 1

-- equivalent in lua
local flooredLua = math.floor(1.7)
```

```js
const floored = Floor(1.7); // 1
```

```cs
using static CitizenFX.Core.Native.API;
int floored = Floor(1.7f); // 1
```
