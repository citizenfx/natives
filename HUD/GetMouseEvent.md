---
ns: HUD
aliases: ["0x632B2940C67F4EA9", "_GET_SCALEFORM_MOVIE_CURSOR_SELECTION"]
---
## GET_MOUSE_EVENT
 
```c
// 0x632B2940C67F4EA9
BOOL GET_MOUSE_EVENT(int scaleformHandle, cs_type(Any*) bool* received, cs_type(Any*) int* eventType, cs_type(Any*) int* uid, int* context);
```

Gets mouse selection data from scaleforms with mouse support. Must be checked every frame.
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
This native, due to its erroneous redundancy of the returned boolean value, works differently in C#: shifting the parameters (where `received` becomes `eventType` and so on making the fourth parameter unused and always 0).

## Examples
```lua
local success, _eventType, _context, _itemId = GetScaleformMovieCursorSelection(scaleform)
```
```cs
int eventType = 0;
int itemId = 0;
int context = 0;
int unused = 0;

var success = GetScaleformMovieCursorSelection(scaleform.Handle, ref eventType, ref context, ref itemId, ref unused);
```

## Parameters
* **scaleformHandle**: Handle of the scaleform
* **received**: Returns a boolean indicating if the data was received successfully (in Lua).
* **eventType**: The specific type of mouse event that has taken place.
* **uid**: A distinct identification for the item that initiated the mouse event.
* **context**: The context in which this item occurred, which could be a column index, submenu, or a similar reference.

## Return value
* **retVal** Returns true if MOUSE_EVENT callback from Scaleforms has been called.
