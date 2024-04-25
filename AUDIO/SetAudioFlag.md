---
ns: AUDIO
---
## SET_AUDIO_FLAG

```c
// 0xB9EFD5C25018725A 0x1C09C9E0
void SET_AUDIO_FLAG(char* flagName, BOOL toggle);
```

Generic interface to toggle audio functionality, with auto-reset on script termination and support for multiple script threads

Flags used in game scripts:
| Flag Name | Description of Usage | 
| ----- | -------- |
| ActivateSwitchWheelAudio | |
| AllowAmbientSpeechInSlowMo | |
| AllowCutsceneOverScreenFade | |
| AllowForceRadioAfterRetune | |
| AllowPainAndAmbientSpeechToPlayDuringCutscene | |
| AllowPlayerAIOnMission | |
| AllowPoliceScannerWhenPlayerHasNoControl | |
| AllowRadioDuringSwitch | |
| AllowRadioOverScreenFade | |
| AllowScoreAndRadio | |
| AllowScriptedSpeechInSlowMo | |
| AvoidMissionCompleteDelay | |
| DisableAbortConversationForDeathAndInjury | |
| DisableAbortConversationForRagdoll | |
| DisableBarks | |
| DisableFlightMusic | |
| DisableNPCHeadsetSpeechAttenuation | |
| DisableReplayScriptStreamRecording | |
| EnableHeadsetBeep | |
| EnableMissileLockWarningForAllVehicles | |
| ForceConversationInterrupt | |
| ForceSeamlessRadioSwitch | |
| ForceSniperAudio | |
| FrontendRadioDisabled | |
| HoldMissionCompleteWhenPrepared | |
| IsDirectorModeActive |  Allows you to play speech infinitely without any pauses like in Director Mode. |
| IsPlayerOnMissionForSpeech | |
| ListenerReverbDisabled | |
| LoadMPData | |
| MobileRadioInGame | |
| OnlyAllowScriptTriggerPoliceScanner | |
| PlayerOnDLCHeist4Island | |
| PlayMenuMusic | |
| PoliceScannerDisabled | |
| ScriptedConvListenerMaySpeak | |
| SpeechDucksScore | |
| SuppressPlayerScubaBreathing | |
| UseQuietSceneSoftVersion | |
| WantedMusicDisabled | |
| WantedMusicOnMission | |

```
All flag IDs and hashes:
ID: 01 | Hash: 0x20A7858F
ID: 02 | Hash: 0xA11C2259
ID: 03 | Hash: 0x08DE4700
ID: 04 | Hash: 0x989F652F
ID: 05 | Hash: 0x3C9E76BA
ID: 06 | Hash: 0xA805FEB0
ID: 07 | Hash: 0x4B94EA26
ID: 08 | Hash: 0x803ACD34
ID: 09 | Hash: 0x7C741226
ID: 10 | Hash: 0x31DB9EBD
ID: 11 | Hash: 0xDF386F18
ID: 12 | Hash: 0x669CED42
ID: 13 | Hash: 0x51F22743
ID: 14 | Hash: 0x2052B35C
ID: 15 | Hash: 0x071472DC
ID: 16 | Hash: 0xF9928BCC
ID: 17 | Hash: 0x7ADBDD48
ID: 18 | Hash: 0xA959BA1A
ID: 19 | Hash: 0xBBE89B60
ID: 20 | Hash: 0x87A08871
ID: 21 | Hash: 0xED1057CE
ID: 22 | Hash: 0x1584AD7A
ID: 23 | Hash: 0x8582CFCB
ID: 24 | Hash: 0x7E5E2FB0
ID: 25 | Hash: 0xAE4F72DB
ID: 26 | Hash: 0x5D16D1FA
ID: 27 | Hash: 0x06B2F4B8
ID: 28 | Hash: 0x5D4CDC96
ID: 29 | Hash: 0x8B5A48BA
ID: 30 | Hash: 0x98FBD539
ID: 31 | Hash: 0xD8CB0473
ID: 32 | Hash: 0x5CBB4874
ID: 33 | Hash: 0x2E9F93A9
ID: 34 | Hash: 0xD93BEA86
ID: 35 | Hash: 0x92109B7D
ID: 36 | Hash: 0xB7EC9E4D
ID: 37 | Hash: 0xCABDBB1D
ID: 38 | Hash: 0xB3FD4A52
ID: 39 | Hash: 0x370D94E5
ID: 40 | Hash: 0xA0F7938F
ID: 41 | Hash: 0xCBE1CE81
ID: 42 | Hash: 0xC27F1271
ID: 43 | Hash: 0x9E3258EB
ID: 44 | Hash: 0x551CDA5B
ID: 45 | Hash: 0xCB6D663C
ID: 46 | Hash: 0x7DACE87F
ID: 47 | Hash: 0xF9DE416F
ID: 48 | Hash: 0x882E6E9E
ID: 49 | Hash: 0x16B447E7
ID: 50 | Hash: 0xBD867739
ID: 51 | Hash: 0xA3A58604
ID: 52 | Hash: 0x7E046BBC
ID: 53 | Hash: 0xD95FDB98
ID: 54 | Hash: 0x5842C0ED
ID: 55 | Hash: 0x285FECC6
ID: 56 | Hash: 0x9351AC43
ID: 57 | Hash: 0x50032E75
ID: 58 | Hash: 0xAE6D0D59
ID: 59 | Hash: 0xD6351785
ID: 60 | Hash: 0xD25D71BC
ID: 61 | Hash: 0x1F7F6423
ID: 62 | Hash: 0xE24C3AA6
ID: 63 | Hash: 0xBFFDD2B7
```

## Parameters
* **flagName**:
* **toggle**:

