---
ns: OBJECT
aliases: ["_0xD4A7A435B3710D05"]
---
## ADD_EXTENDED_PICKUP_PROBE_AREA

```c
// AddExtendedPickupProbeArea
void ADD_EXTENDED_PICKUP_PROBE_AREA(float x, float y, float z, float radius);
```

Adds an area of the map where the portable pickups will use extended probe when dropped

## Parameters
* **x**: X position of extended probe area
* **y**: Y position of extended probe area
* **z**: Z position of extended probe area
* **radius**: radius of extended probe area



## Examples

```lua

local position = vector3(-323.59, -757.83, 53.25)
local radius = 25.0

AddExtendedPickupProbeArea(position.x, position.y, position.z, radius)

```