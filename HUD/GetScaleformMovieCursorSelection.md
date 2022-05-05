---
ns: HUD
aliases: ["0x632B2940C67F4EA9"]
---
## _GET_SCALEFORM_MOVIE_CURSOR_SELECTION
 
```c
// 0x632B2940C67F4EA9
BOOL _GET_SCALEFORM_MOVIE_CURSOR_SELECTION(int scaleformHandle, cs_type(Any*) bool* received, cs_type(Any*) int* selectionType, cs_type(Any*) int* context, int* slotIndex);
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
This native, due to its erroneous redundancy of the returned boolean value, doesn't work on C# unless you call Function class.

## Examples
```cs
int eventType = 0;
int itemId = 0;
int context = 0;

OutputArgument _eventType = new OutputArgument();
OutputArgument _context = new OutputArgument();
OutputArgument _itemId = new OutputArgument();
bool success = Function.Call<bool>(Hash._GET_SCALEFORM_MOVIE_CURSOR_SELECTION, scaleform.Handle, _eventType, _context, _itemId);
if (success)
{
    eventType = _eventType.GetResult<int>();
    itemId = _itemId.GetResult<int>();
    context = _context.GetResult<int>();
}

  
## Parameters
* **scaleformHandle**: Handle of the scaleform
* **received**: Returns a boolean indicating if the data was received successfully.
* **selectionType**: The type of MouseEvent specified above.
* **context**: Context of the slot the mouse is hovering on.
* **slotIndex**: Index of the slot the mouse is hovering on.

## Return value
* **retVal** Returns true if MOUSE_EVENT callback from Scaleforms has been called.
```