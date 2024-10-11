---
ns: VEHICLE
---
## SET_BOAT_ANCHOR

```c
// 0x75DBEC174AEEAD10 0xA3906284
void SET_BOAT_ANCHOR(Vehicle boat, BOOL toggle);
```

Sets the anchor state for a boat.

```
NativeDB Introduced: v323
```

**Note**: You might want to check if you can use your anchor before with [CAN_ANCHOR_BOAT_HERE](#_0x26C10ECBDA5D043B).

## Parameters
* **boat**: The target boat.
* **toggle**: Set the anchor state `true` deploys the anchor, false `raises` it.

## Examples
```lua
local boat = GetVehiclePedIsIn(PlayerPedId(), false)
if not boat or not IsThisModelABoat(GetEntityModel(boat)) then return end

-- Check if we can anchor the boat here
if CanAnchorBoatHere(boat) then
    -- Deploy the boat's anchor
    SetBoatAnchor(boat, true)
    
    -- Wait for 10 seconds
    Wait(10000)
    
    -- Raise the boat's anchor
    SetBoatAnchor(boat, false)
else
    print("Cannot anchor the boat at this location")
end
```

```js
const boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (!boat || !IsThisModelABoat(GetEntityModel(boat))) return;

// Check if we can anchor the boat here
if (CanAnchorBoatHere(boat)) {
    // Deploy the boat's anchor
    SetBoatAnchor(boat, true);

    // Wait for 10 seconds
    await new Promise(resolve => setTimeout(resolve, 10000));

    // Raise the boat's anchor
    SetBoatAnchor(boat, false);
} else {
    console.log("Cannot anchor the boat at this location");
}
```

```cs
using CitizenFX.Core;
using static CitizenFX.Core.Native.API;

int boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (boat == 0 || !IsThisModelABoat(GetEntityModel(boat))) return;

// Check if we can anchor the boat here
if (CanAnchorBoatHere(boat))
{
    // Deploy the boat's anchor
    SetBoatAnchor(boat, true);

    // Wait for 10 seconds
    await BaseScript.Delay(10000);

    // Raise the boat's anchor
    SetBoatAnchor(boat, false);
}
else
{
    Debug.WriteLine("Cannot anchor the boat at this location");
}
```