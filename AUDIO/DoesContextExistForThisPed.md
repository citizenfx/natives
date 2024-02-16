---
ns: AUDIO
aliases: ["0x49B99BF3FDA89A7A", "_CAN_PED_SPEAK"]
---
## DOES_CONTEXT_EXIST_FOR_THIS_PED

```c
// 0x49B99BF3FDA89A7A 0x8BD5F11E
BOOL DOES_CONTEXT_EXIST_FOR_THIS_PED(Ped ped, char* speechName, BOOL allowBackupPVGs);
```

Checks if the context exists for the ped, searching through the voices in its PedVoiceGroup.

The final argument can be set to true to allow searching in backup PVGs

## Parameters
* **ped**:
* **speechName**:
* **allowBackupPVGs**:

## Return value
True of the PedVoiceGroup exists, false otherwise.
