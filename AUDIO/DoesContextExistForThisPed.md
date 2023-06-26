---
ns: AUDIO
aliases: ["0x49B99BF3FDA89A7A", "_CAN_PED_SPEAK"]
---
## DOES_​CONTEXT_​EXIST_​FOR_​THIS_​PED

```c
// 0x49B99BF3FDA89A7A 0x8BD5F11E
BOOL DOES_​CONTEXT_​EXIST_​FOR_​THIS_​PED(Ped ped, char* speechName, BOOL p2);
```

Checks if the ped can play the speech or has the speech file

## Parameters
* **ped**: Ped for which you want to check the context.
* **speechName**: The name of the speech to check.
* **p2**: A boolean value representing additional context information. It is usually set to 0.

## Return value
