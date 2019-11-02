---
ns: AUDIO
---
## PLAY_PAIN

```c
// 0xBC9AE166038A5CEC 0x874BD6CB
void PLAY_PAIN(Ped ped, int painID, int p1);
```

```
Needs another parameter [int p2]. The signature is PED::PLAY_PAIN(Ped ped, int painID, int p1, int p2);  
Last 2 parameters always seem to be 0.  
EX: Function.Call(Hash.PLAY_PAIN, TestPed, 6, 0, 0);  
Known Pain IDs  
________________________  
1 - Doesn't seem to do anything. Does NOT crash the game like previously said. (Latest patch)  
6 - Scream (Short)  
7 - Scared Scream (Kinda Long)  
8 - On Fire  
```

```
NativeDB Added Parameter 4: Any p3
```

## Parameters
* **ped**: 
* **painID**: 
* **p1**: 

