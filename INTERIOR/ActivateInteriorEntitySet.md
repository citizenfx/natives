---
ns: INTERIOR
aliases: ["0x55E86AF2712B36A1","_ENABLE_INTERIOR_PROP"]
---
## ACTIVATE_INTERIOR_ENTITY_SET

```c
// 0x55E86AF2712B36A1 0xC80A5DDF
void ACTIVATE_INTERIOR_ENTITY_SET(int interior, char* entitySetName);
```

Activates the entity set with the specified name in the given interior. If you want to disable a entity set, use [`DEACTIVATE_INTERIOR_ENTITY_SET`](#_0x420BD37289EEE162).

```
NativeDB Introduced: v323
```

## Parameters
* **interior**: The index of the interior.
* **entitySetName**: The name of the entity set to activate.

## Examples
```lua
-- Get the interior id for the casino penthouse
local interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641)

-- Activate certain entity sets for the casino penthouse
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Spa_Bar_Open')
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Media_Bar_Open')
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Arcade_Retro')
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Bar_Clutter')
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Clutter_03')
ActivateInteriorEntitySet(interiorID, 'Set_pent_bar_light_02')
```
```javascript
// Get the interior id for the casino penthouse
const interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641);

// Activate certain entity sets for the casino penthouse
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Spa_Bar_Open');
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Media_Bar_Open');
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Arcade_Retro');
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Bar_Clutter');
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Clutter_03');
ActivateInteriorEntitySet(interiorID, 'Set_pent_bar_light_02');
```
```csharp
using static CitizenFX.Core.Native.API;

// Get the interior id for the casino penthouse
int interiorID = GetInteriorAtCoords(976.6364, 70.29476, 115.1641);

// Activate certain entity sets for the casino penthouse
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Spa_Bar_Open');
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Media_Bar_Open');
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Arcade_Retro');
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Bar_Clutter');
ActivateInteriorEntitySet(interiorID, 'Set_Pent_Clutter_03');
ActivateInteriorEntitySet(interiorID, 'Set_pent_bar_light_02');
```