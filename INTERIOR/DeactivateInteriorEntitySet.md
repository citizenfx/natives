---
ns: INTERIOR
aliases: ["0x420BD37289EEE162","_DISABLE_INTERIOR_PROP"]
---
## DEACTIVATE_INTERIOR_ENTITY_SET

```c
// 0x420BD37289EEE162 0xDBA768A1
void DEACTIVATE_INTERIOR_ENTITY_SET(int interior, char* entitySetName);
```

Deactivates the entity set with the specified name in the given interior.

```
NativeDB Introduced: v323
```

## Parameters
* **interior**: The index of the interior.
* **entitySetName**: The name of the entity set to deactivate.

## Examples
```lua
-- Get the interior id for the casino penthouse
local interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641)

-- Deactivate certain entity sets for the casino penthouse
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Spa_Bar_Open')
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Media_Bar_Open')
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Arcade_Retro')
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Bar_Clutter')
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Clutter_03')
DeactivateInteriorEntitySet(interiorID, 'Set_pent_bar_light_02')
```
```javascript
// Get the interior id for the casino penthouse
const interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641);

// Deactivate certain entity sets for the casino penthouse
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Spa_Bar_Open');
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Media_Bar_Open');
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Arcade_Retro');
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Bar_Clutter');
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Clutter_03');
DeactivateInteriorEntitySet(interiorID, 'Set_pent_bar_light_02');
```
```csharp
using static CitizenFX.Core.Native.API;

// Get the interior id for the casino penthouse
int interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641);

// Deactivate certain entity sets for the casino penthouse
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Spa_Bar_Open');
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Media_Bar_Open');
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Arcade_Retro');
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Bar_Clutter');
DeactivateInteriorEntitySet(interiorID, 'Set_Pent_Clutter_03');
DeactivateInteriorEntitySet(interiorID, 'Set_pent_bar_light_02');
```