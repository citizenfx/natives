---
ns: HUD
aliases: ["0x632B2940C67F4EA9", "_GET_SCALEFORM_MOVIE_CURSOR_SELECTION"]
---
## GET_MOUSE_EVENT
 
```c
// 0x632B2940C67F4EA9
BOOL GET_MOUSE_EVENT(int scaleformHandle, cs_type(Any*) bool* received, cs_type(Any*) int* selectionType, cs_type(Any*) int* context, int* slotIndex);
```

Gets mouse event data from scaleforms with mouse support. Must be checked every frame.
Returns item index if using the COLOUR_SWITCHER_02 scaleform.
Selection types, found in MOUSE_EVENTS.as:
MOUSE_DRAG_OUT = 0;
MOUSE_DRAG_OVER = 1;
MOUSE_DOWN = 2;
MOUSE_MOVE = 3;
MOUSE_UP = 4;
MOUSE_PRESS = 5;
MOUSE_RELEASE = 6;
MOUSE_RELEASE_OUTSIDE = 7;
MOUSE_ROLL_OUT = 8;
MOUSE_ROLL_OVER = 9;
MOUSE_WHEEL_UP = 10;
MOUSE_WHEEL_DOWN = 11;
 
Scaleforms that this works with: 
- COLOUR_SWITCHER_02
- MP_RESULTS_PANEL
- MP_NEXT_JOB_SELECTION
- SC_LEADERBOARD
Probably works with other scaleforms, needs more research.
In order to use this Native you MUST have controls 239, 240, 237, 238 enabled!
This native, due to its erroneous redundancy of the returned boolean value, works differently in C#: shifting the parameters (where `received` becomes `selectionType` and so on making the fourth parameter unused and always 0).

## Examples
```lua
local success, _eventType, _context, _itemId = GetMouseEvent(scaleform)
```
```cs
int eventType = 0;
int itemId = 0;
int context = 0;
int unused = 0;

var success = GetMouseEvent(scaleform.Handle, ref eventType, ref context, ref itemId, ref unused);
```

## Parameters
* **scaleformHandle**: Handle of the scaleform
* **received**: Returns a boolean indicating if the data was received successfully (in Lua).
* **selectionType**: The type of MouseEvent specified above.
* **context**: Context of the slot the mouse is hovering on.
* **slotIndex**: Index of the slot the mouse is hovering on.

## Return value
* **retVal** Returns true if MOUSE_EVENT callback from Scaleforms has been called.
