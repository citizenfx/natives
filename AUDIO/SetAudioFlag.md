---
ns: AUDIO
---
## SET_AUDIO_FLAG

```c
// 0xB9EFD5C25018725A 0x1C09C9E0
void SET_AUDIO_FLAG(char* flagName, BOOL enabled);
```

Generic interface to toggle audio functionality, with auto-reset on script termination and support for multiple script threads

```
All flag names and hashes:
Name: RadioOverlapDisabled | Hash: 0xFED7A7F
Name: AggressiveHorns | Hash: 0x20A7858F
Name: CarsStartFirstTime | Hash: 0xA11C2259
Name: BoostPlayerCarVolume | Hash: 0x8DE4700
Name: UserRadioControlDisabled | Hash: 0x989F652F
Name: FrontendRadioDisabled | Hash: 0x3C9E76BA
Name: MobileRadioInGame | Hash: 0xA805FEB0
Name: ForceSeamlessRadioSwitch | Hash: 0x4B94EA26
Name: AllowScoreAndRadio | Hash: 0x803ACD34
Name: PoliceScannerDisabled | Hash: 0x7C741226
Name: OnlyAllowScriptTriggerPoliceScanner | Hash: 0x31DB9EBD
Name: AllowPoliceScannerWhenPlayerHasNoControl | Hash: 0xDF386F18
Name: DisableAbortConversationForRagdoll | Hash: 0x669CED42
Name: DisableAbortConversationForOnFire | Hash: 0x51F22743
Name: DisableAbortConversationForDeathAndInjury | Hash: 0x2052B35C
Name: LimitAmbientRadioStations | Hash: 0x71472DC
Name: SpeechDucksScore | Hash: 0xF9928BCC
Name: ListenerReverbDisabled | Hash: 0x7ADBDD48
Name: ScriptedSpeechDuckingDisabled | Hash: 0xA959BA1A
Name: ScriptedConvListenerMaySpeak | Hash: 0xBBE89B60
Name: OnlyAllowCombatSay | Hash: 0x87A08871
Name: AllowPlayerAIOnMission | Hash: 0xED1057CE
Name: AllowBuddyAIOnMission  | Hash: 0x1584AD7A
Name: GroupShootout | Hash: 0x8582cfcb
Name: TrevorRageIsOverriden | Hash: 0x7E5E2FB0
Name: UnderWaterStreamOverriden | Hash: 0xAE4F72DB
Name: WantedMusicDisabled | Hash: 0x5D16D1FA
Name: DisablePlayerBreathing | Hash: 0x6B2F4B8
Name: WantedMusicOnMission | Hash: 0x5D4CDC96
Name: DisableSniperAudio | Hash: 0x8B5A48BA
Name: ForceSniperAudio | Hash: 0x98FBD539
Name: OverridePlayerGroundMaterial | Hash: 0xD8CB0473
Name: ScriptForceMicPosition | Hash: 0x5CBB4874
Name: ScriptForceGunfightConductorIntensity | Hash: 0x2E9F93A9
Name: DisableFlightMusic | Hash: 0xD93BEA86
Name: DoNotBlipScriptedSpeech | Hash: 0x92109B7D
Name: DisableBarks | Hash: 0xB7EC9E4D
Name: RepeatLineForRagdolling | Hash: 0xCABDBB1D
Name: DontRepeatLineForPlayerRagdolling | Hash: 0xB3FD4A52
Name: OverrideElevationWind | Hash: 0x370D94E5
Name: HoldMissionCompleteWhenPrepared | Hash: 0xA0F7938F
Name: AvoidMissionCompleteDelay | Hash: 0xCBE1CE81
Name: AllowScriptedSpeechInSlowMo | Hash: 0xC27F1271
Name: ActivateSwitchWheelAudio | Hash: 0x9E3258EB
Name: AllowAmbientSpeechInSlowMo | Hash: 0x551CDA5B
Name: AllowRadioOverScreenFade | Hash: 0xCB6D663C
Name: ScriptPlayingDistantSiren | Hash: 0x7DACE87F
Name: AllowRadioDuringSwitch | Hash: 0xF9DE416F
Name: LoadMPData | Hash: 0x882E6E9E
Name: UseQuietSceneSoftVersion | Hash: 0x16B447E7
Name: PlayMenuMusic | Hash: 0xBD867739
Name: OverrideMicrophoneSettings | Hash: 0xA3A58604
Name: SuppressPlayerScubaBreathing | Hash: 0x7E046BBC
Name: IsPlayerOnMissionForSpeech | Hash: 0xD95FDB98
Name: AllowPainAndAmbientSpeechToPlayDuringCutscene | Hash: 0x5842C0ED
Name: ForceConversationInterrupt | Hash: 0x285FECC6
Name: DisableReplayScriptStreamRecording | Hash: 0x9351AC43
Name: DisableReplayScriptFrontendStreamRecording | Hash:0x50032E75
Name: AllowForceRadioAfterRetune | Hash: 0xAE6D0D59
Name: IsDirectorModeActive | Hash: 0xD6351785
Name: EnableHeadsetBeep | Hash: 0xD25D71BC
Name: DisableHeadsetOnBeep | Hash: 0x1F7F6423
Name: DisableHeadsetOffBeep | Hash: 0xE24C3AA6
Name: AllowCutsceneOverScreenFade | Hash: 0xBFFDD2B7
Name: SuppressRadioSwitchBeep | Hash: 0x3FCC2ABF
Name: EnableGameplayCriticalMusicEmitters | Hash: 0x2EB25AD0
Name: EnableMissileLockWarningForAllVehicles | Hash: 0x2B56D9D0
Name: PlayerOnDLCHeist4Island | Hash: 0xAE6A6DE9
Name: DisableNPCHeadsetSpeechAttenuation | Hash: 0x49D479E5
```

## Parameters
* **flagName**: name of the flag
* **enabled**: whether flag is enabler or not

