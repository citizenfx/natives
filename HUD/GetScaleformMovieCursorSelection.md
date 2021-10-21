---
ns: HUD
aliases: ["0x632B2940C67F4EA9"]
---
## _GET_SCALEFORM_MOVIE_CURSOR_SELECTION
 
```c
// 0x632B2940C67F4EA9
BOOL _GET_SCALEFORM_MOVIE_CURSOR_SELECTION(int scaleformHandle, bool* received, int* selectionType, int* slotIndex, int* p4);
```
 
Gets mouse selection data from scaleforms with mouse support. Must be checked every frame
Selection types:
5 - Click pressed
6 - Click released
7 - Click released but the mouse wasn't hovering on any slots
8 - Mouse stopped hovering on a slot
9 - Mouse started hovering on a slot
 
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
