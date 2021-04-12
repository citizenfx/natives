---
ns: AUDIO
aliases: ["0x950A154B8DAB6185"]
---
## _SET_SYNCHRONIZED_AUDIO_EVENT_POSITION_THIS_FRAME

```c
// 0x950A154B8DAB6185 0xA17F9AB0
void _SET_SYNCHRONIZED_AUDIO_EVENT_POSITION_THIS_FRAME(char* p0, Entity p1);
```

```
Sets the position of the audio event to the entity's position for one frame(?)
if (l_8C3 == 0) {
    sub_27fd1(0, -1, 1);
    if (PED::IS_SYNCHRONIZED_SCENE_RUNNING(l_87D)) {
        AUDIO::STOP_SYNCHRONIZED_AUDIO_EVENT(l_87D);
    }
    if (sub_7dd(l_A00)) {
        AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);
    }
    sub_91c("TK************ SETTING SYNCH SCENE AUDIO POSITION THIS FRAME ************TK");
    l_8C3 = 1;
}
--
Found in the b617d scripts, duplicates removed:
AUDIO::_950A154B8DAB6185("CAR_5_IG_6", l_7FE[1/*1*/]);
AUDIO::_950A154B8DAB6185("EX03_TRAIN_BIKE_LAND",   PLAYER::PLAYER_PED_ID());
AUDIO::_950A154B8DAB6185("FBI_2_MCS_1_LeadIn", l_40[2/*1*/]);
AUDIO::_950A154B8DAB6185("FIN_C2_MCS_1", l_24C[0/*1*/]);
AUDIO::_950A154B8DAB6185("MNT_DNC", l_5F);
AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);
```

## Parameters
* **p0**: 
* **p1**: 

