---
ns: SYSTEM
---
## ROUND

```c
// 0xF2DB717A73826179 0x323B0E24
int ROUND(float value);
```

Rounds a float to the nearest whole number. Values exactly halfway between two whole numbers round up, toward positive infinity.

## Parameters
* **value**: The number to round.

## Return value
The value rounded to the nearest whole number.

## Examples
```lua
local rounded = Round(1.5) -- 2
local roundedNeg = Round(-1.5) -- -1 (halves round up)
```

```js
const rounded = Round(1.5); // 2
const roundedNeg = Round(-1.5); // -1 (halves round up)
```

```cs
using static CitizenFX.Core.Native.API;
int rounded = Round(1.5f); // 2
int roundedNeg = Round(-1.5f); // -1 (halves round up)
```
