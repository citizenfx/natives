---
ns: INTERIOR
aliases: ["0x2CA429C029CCF247","_LOAD_INTERIOR"]
---
## PIN_INTERIOR_IN_MEMORY

```c
// 0x2CA429C029CCF247 0x3ADA414E
void PIN_INTERIOR_IN_MEMORY(int interior);
```

Instructs the interior system to load the specified interior into memory.

```
NativeDB Introduced: v323
```

## Parameters
* **interior**: The index of the interior.

## Examples
```lua
CreateThread(function()
    local interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641)
    PinInteriorInMemory(interiorID)
    repeat
        Wait(0)
    until IsInteriorReady(interiorID)
end)
```