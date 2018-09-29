---
ns: NETWORK
aliases: ["0x924426BFFD82E915"]
---
## _NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS

```c
// 0x924426BFFD82E915 0x29532731
BOOL _NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS();
```

```
NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS - Correct console hash is 0x98EFB921  
Start the downloading of BG_NG.RPF from R* Cloud which contains hotfix.  
The console hash given is incorrect for Xbox360 that is. I searched in IDA and found 0x98EFB921 which came right after 0x155465EE. Then I searched it in TU27 X360 scripts and found it was the same results same scripts as the PC Hash for this which is obviously correct. I found the correct one as I noticed TU27 X360 script search pulled no results for 0x29532731 when it should have.  
As you can see here you will see the 155465EE first then the correct hash for this native. Then the current 29532731 one which could be the native below or the native below's hash could be the has below the 29532731   
puu.sh/nhdQI/e0ca5567b4.png  
0x98EFB921 is the correct console hash for "_DOWNLOAD_BG_SCRIPT_RPF". 0x29532731 is "_HAS_BG_SCRIPT_BEEN_DOWNLOADED"  
The code:  
seg001:00000000003EFF4C uunk_0x29532731:                        # CODE XREF: sub_158C8AC+14p  
seg001:00000000003EFF4C                 lis       r3, dword_1CFB100@ha  
seg001:00000000003EFF50                 lwz       r3, dword_1CFB100@l(r3)  
seg001:00000000003EFF54                 ld        r3, 0x1020(r3)  
seg001:00000000003EFF58                 extsw     r3, r3  
seg001:00000000003EFF5C                 blr  
seg001:00000000003EFF5C # End of function uunk_0x29532731  
```

## Return value
