---
ns: HUD
aliases: ["0x632B2940C67F4EA9"]
---
## _GET_SCALEFORM_MOVIE_CURSOR_SELECTION
 
```c
// 0x632B2940C67F4EA9
BOOL _GET_SCALEFORM_MOVIE_CURSOR_SELECTION(int scaleformHandle, cs_type(Any*) bool* received, cs_type(Any*) int* selectionType, cs_type(Any*) int* slotIndex, int* p4);
```
 
Gets mouse selection data from scaleforms with mouse support. Must be checked every frame
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
 
## Parameters
* **scaleformHandle**: Handle of the scaleform
* **received**: Returns a boolean indicating if the data was received successfully
* **selectionType**:  
* **slotIndex**: Index of the slot the mouse is hovering on
* **p4**: Purpose unknown, always returns -1 or 0. Returns item index if using the COLOUR_SWITCHER_02 scaleform
 
## Return value
