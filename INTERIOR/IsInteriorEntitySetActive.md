---
ns: INTERIOR
aliases: ["0x35F7DD45E8C0A16D","_IS_INTERIOR_PROP_ENABLED"]
---
## IS_INTERIOR_ENTITY_SET_ACTIVE

```c
// 0x35F7DD45E8C0A16D 0x39A3CC6F
BOOL IS_INTERIOR_ENTITY_SET_ACTIVE(int interior, char* entitySetName);
```

Determines whether the specified entity set is active within the given interior.

```
NativeDB Introduced: v323
```

## Parameters
* **interior**: The index of the interior.
* **entitySetName**: The name of the entity set to check.

## Return value
A boolean value indicating whether the entity set is active (`true`) or not (`false`).

## Examples
```lua
-- Check if the entity set `Set_Pent_Spa_Bar_Open` (casino penthouse) is active or not
local interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641)
local entitySet = "Set_Pent_Spa_Bar_Open"
local isInteriorSetActive = IsInteriorEntitySetActive(interiorID, entitySet)

print("Entity Set Active: " .. isInteriorSetActive)
```
```javascript
// Check if the entity set `Set_Pent_Spa_Bar_Open` (casino penthouse) is active or not
const interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641);
const entitySet = "Set_Pent_Spa_Bar_Open";
const isInteriorSetActive = IsInteriorEntitySetActive(interiorID, entitySet);

console.log(`Entity Set Active: ${isInteriorSetActive}`);
```
```csharp
using static CitizenFX.Core.Native.API;

// Check if the entity set `Set_Pent_Spa_Bar_Open` (casino penthouse) is active or not
int interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641);
string entitySet = "Set_Pent_Spa_Bar_Open";
bool isInteriorSetActive = IsInteriorEntitySetActive(interiorID, entitySet);

Debug.WriteLine($"Entity Set Active: {isInteriorSetActive}");
```