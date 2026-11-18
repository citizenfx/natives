---
ns: SYSTEM
---
## VMAG2

```c
// 0xA8CEACB4F35AE058 0xE796E629
float VMAG2(float x, float y, float z);
```

Returns the squared magnitude of the vector (x, y, z), without taking the square root.

## Parameters
* **x**: The X component of the vector.
* **y**: The Y component of the vector.
* **z**: The Z component of the vector.

## Return value
The squared magnitude of the vector, equal to x * x + y * y + z * z.

## Examples
```lua
local squaredMagnitude = Vmag2(3.0, 4.0, 0.0) -- 25.0
```

```js
const squaredMagnitude = Vmag2(3.0, 4.0, 0.0); // 25
```

```cs
using static CitizenFX.Core.Native.API;
float squaredMagnitude = Vmag2(3.0f, 4.0f, 0.0f); // 25
```
