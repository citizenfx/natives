---
ns: SYSTEM
---
## _LOG10

```c
// 0xE816E655DE37FE20
float _LOG10(float value);
```

Returns the base-10 logarithm of value.

```
NativeDB Introduced: v1604
```

## Parameters
* **value**: The number to get the base-10 logarithm of. Must be greater than 0.

## Return value
The base-10 logarithm of value.

## Examples
```lua
local log = Log10(100.0) -- 2.0

-- equivalent in lua
local logLua = math.log(100.0, 10)
```

```js
const log = Log10(100.0); // 2
```

```cs
using static CitizenFX.Core.Native.API;
float log = Log10(100.0f); // 2
```
