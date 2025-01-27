---
ns: HUD
---
## SET_MINIMAP_COMPONENT

```c
// 0x75A9A10948D1DEA6 0x419DCDC4
int SET_MINIMAP_COMPONENT(int componentID, BOOL toggle, int hudColor);
```

Sets a component on the minimap on/off

```c
enum eMINIMAP_COMPONENT
{
	MINIMAP_COMPONENT_RUNWAY_1 = 0,	
	MINIMAP_COMPONENT_RUNWAY_2,       
	MINIMAP_COMPONENT_RUNWAY_3,       
	MINIMAP_COMPONENT_RUNWAY_4,       
	MINIMAP_COMPONENT_PRISON_GROUNDS, 
	MINIMAP_COMPONENT_DEBUG_MAP_AREAS,
	MINIMAP_COMPONENT_KING_HILL_1,
	MINIMAP_COMPONENT_KING_HILL_2,
	MINIMAP_COMPONENT_KING_HILL_3,
	MINIMAP_COMPONENT_KING_HILL_4,
	MINIMAP_COMPONENT_KING_HILL_5,
	MINIMAP_COMPONENT_KING_HILL_6,
	MINIMAP_COMPONENT_KING_HILL_7,
	MINIMAP_COMPONENT_KING_HILL_8,
	MINIMAP_COMPONENT_KING_HILL_9,
	MINIMAP_COMPONENT_KING_HILL_10,
	MINIMAP_COMPONENT_KING_HILL_11,
	MINIMAP_COMPONENT_KING_HILL_12,
	MINIMAP_COMPONENT_KING_HILL_13
}
```

### An incomplete list of component IDs:

* **0**: Los Santos International Airport yellow runway markers
* **1**: Sandy Shores Airfield yellow runway markers
* **2**: McKenzie Field yellow runway markers
* **3**: Military base
* **4**: Prison interior	
* **5**: debug coloured map areas	
* **6**: Vespucci Beach lifeguard building
* **7**: Top level zone of Alien Camp (Hippy Camp)
* **8**: Paleto Bay fire station drill tower
* **9**: Land Act Dam tower
* **10**: Pala Springs Aerial Tramway
* **11**: Galileo Observatory power unit
* **12**: Small zone (empty "interior") near Central Los Santos Medical Center
* **13**: Richman Mansion grotto
* **14**: 2 Alien Camp (Hippy Camp) circles
* **15**: Fort Zancudo

## Parameters
* **componentID**: The component ID to change.
* **toggle**: True to enable/colorize, false to disable.
* **hudColor**: The hudcolor index, the list of hud colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/).

## Return value
Hardcoded to always return 1 (int)

## Examples
```lua
-- Enables Fort Zancudo on the map
SetMinimapComponent(15, true, 0)
```
