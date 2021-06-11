---
ns: GRAPHICS
aliases: ["0xF7B38B8305F1FE8B","_LOAD_TV_CHANNEL_SEQUENCE"]
---
## SET_TV_CHANNEL_PLAYLIST

```c
// 0xF7B38B8305F1FE8B 0xB262DE67
void SET_TV_CHANNEL_PLAYLIST(int tvChannel, char* playlistName, BOOL restart);
```

Loads specified video sequence into the TV Channel
TV_Channel ranges from 0-2
VideoSequence can be any of the following:
"PL_STD_CNT" CNT Standard Channel
"PL_STD_WZL" Weazel Standard Channel
"PL_LO_CNT"
"PL_LO_WZL"
"PL_SP_WORKOUT"
"PL_SP_INV" - Jay Norris Assassination Mission Fail
"PL_SP_INV_EXP" - Jay Norris Assassination Mission Success
"PL_LO_RS" - Righteous Slaughter Ad
"PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene
"PL_SP_PLSH1_INTRO"
"PL_LES1_FAME_OR_SHAME"
"PL_STD_WZL_FOS_EP2"
"PL_MP_WEAZEL" - Weazel Logo on loop
"PL_MP_CCTV" - Generic CCTV loop
Restart:
0=video sequence continues as normal
1=sequence restarts from beginning every time that channel is selected
The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in `tvplaylists.xml`. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
https://pastebin.com/zUzGB6h7

## Parameters
* **tvChannel**: 
* **playlistName**: 
* **restart**: 

