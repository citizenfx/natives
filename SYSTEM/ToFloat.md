---
ns: SYSTEM
---
## TO_FLOAT

```c
// 0xBBDA792448DB5A89 0x67116627
float TO_FLOAT(int value);
```

Converts an integer to a float.

## Parameters
* **value**: The integer to convert.

## Return value
The value as a float.

## Examples
```lua
local floatValue = ToFloat(5) -- 5.0
```

```js
const floatValue = ToFloat(5); // 5.0
```

```cs
using static CitizenFX.Core.Native.API;
float floatValue = ToFloat(5); // 5
```
