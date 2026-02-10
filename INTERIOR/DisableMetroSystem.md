---
ns: INTERIOR
aliases: ["0x9E6542F0CE8E70A3"]
---
## DISABLE_METRO_SYSTEM

```c
// 0x9E6542F0CE8E70A3 0x5EF9C5C2
void DISABLE_METRO_SYSTEM(BOOL toggle);
```

Completely disables the metro system in the game.

```
NativeDB Introduced: v323
```

## Parameters
* **toggle**: A boolean value indicating whether to disable (`true`) or enable (`false`) the metro system.

## Examples
```lua
-- Disable metro system
DisableMetroSystem(true)
```
```javascript
// Disable metro system
DisableMetroSystem(true);
```
```csharp
using static CitizenFX.Core.Native.API;

// Disable metro system
DisableMetroSystem(true);
```