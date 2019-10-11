---
ns: HUD
aliases: ["0xDD6CB2CCE7C2735C","_DRAW_NOTIFICATION_WITH_BUTTON"]
---
## _END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT

```c
// 0xDD6CB2CCE7C2735C
int _END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(int eType, char* sIcon, char* sSubtitle);
```

```
returns a notification handle, prints out a notification like below:  
type range: 0   
if you set type to 1, button accepts "~INPUT_SOMETHING~"  
example:  
UI::_0xDD6CB2CCE7C2735C(1, "~INPUT_TALK~", "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
- imgur.com/UPy0Ial  
Examples from the scripts:  
l_D1[1/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");  
l_D1[2/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_SAVE_REPLAY_CLIP~","");  
l_D1[1/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");  
l_D1[2/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING_SECONDARY~","");  
```

## Parameters
* **eType**: 
* **sIcon**: 
* **sSubtitle**: 

## Return value
