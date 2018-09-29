---
ns: PED
---
## GIVE_PED_NM_MESSAGE

```c
// 0xB158DFCCC56E5C5B 0x737C3689
void GIVE_PED_NM_MESSAGE(Ped ped);
```

```
Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.  
If a message hasn't been created already, this function does nothing.  
If the Ped is not ragdolled with Euphoria enabled, this function does nothing.  
The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
Call order:  
SET_PED_TO_RAGDOLL  
CREATE_NM_MESSAGE  
GIVE_PED_NM_MESSAGE  
Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made:  
SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff.  
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling.  
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around.  
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
```

## Parameters
* **ped**: 

