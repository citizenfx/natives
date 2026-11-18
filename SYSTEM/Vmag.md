---
ns: SYSTEM
---
## VMAG

```c
// 0x652D2EEEF1D3E62C 0x1FCF1ECD
float VMAG(float x, float y, float z);
```

Returns the magnitude (length) of the vector (x, y, z).

## Parameters
* **x**: The X component of the vector.
* **y**: The Y component of the vector.
* **z**: The Z component of the vector.

## Return value
The magnitude of the vector, equal to the square root of x * x + y * y + z * z.

## Examples
```lua
local magnitude = Vmag(3.0, 4.0, 0.0) -- 5.0

-- equivalent in lua
local magnitudeLua = math.sqrt(3.0 * 3.0 + 4.0 * 4.0 + 0.0 * 0.0)
```

```js
const magnitude = Vmag(3.0, 4.0, 0.0); // 5
```

```cs
using static CitizenFX.Core.Native.API;
float magnitude = Vmag(3.0f, 4.0f, 0.0f); // 5
```
