---
ns: VEHICLE
aliases: ["0x2FA2494B47FDD009"]
---
## SET_TRAILER_ATTACHMENT_ENABLED

```c
// 0x2FA2494B47FDD009
void SET_TRAILER_ATTACHMENT_ENABLED(Vehicle vehicle, cs_type(Any) BOOL enabled);
```

Sets whether the trailer can attach to vehicles

## Parameters
* **vehicle**: The trailer to set attachment state for
* **enabled**: Enable or disable attachment

## Examples

```lua
local trailerModel = `tanker`
local trailerCoordinates = vector3(-323.59, -757.83, 53.25)
local trailerHeading = 247.77

RequestModel(trailerModel)

while not HasModelLoaded(trailerModel) do
  Wait(0)
end

local trailerIndex = CreateVehicle(trailerModel, trailerCoordinates.x, trailerCoordinates.y, trailerCoordinates.z, trailerHeading, true, false)

SetTrailerAttachmentEnabled(trailerIndex, false)
SetModelAsNoLongerNeeded(trailerModel)
```