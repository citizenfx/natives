---
ns: NETWORK
aliases: ["0x4BA92A18502BCA61"]
---
## NETWORK_START_RESPAWN_SEARCH_IN_ANGLED_AREA_FOR_PLAYER

```c
// 0x4BA92A18502BCA61 0x74D6B13C
BOOL NETWORK_START_RESPAWN_SEARCH_IN_ANGLED_AREA_FOR_PLAYER(Player player, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, int flags);
```

```
Seems to call GET_PAUSED_MAP_STREAMING_REQUEST lol wtf  
seg001:000000000158C324 sub_158C324:                            # DATA XREF: OPD:stru_1C29978o  
seg001:000000000158C324  
seg001:000000000158C324 .set arg_10,  0x10  
seg001:000000000158C324  
seg001:000000000158C324                 mflr      r0  
seg001:000000000158C328                 bl        sub_1803774  
seg001:000000000158C32C                 stdu      r1, -0x80(r1)  
seg001:000000000158C330                 std       r0, 0x80+arg_10(r1)  
seg001:000000000158C334                 mr        r31, r3  
seg001:000000000158C338                 lwz       r3, 8(r31)  
seg001:000000000158C33C                 addic     r4, r3, 4  
seg001:000000000158C340                 addic     r5, r3, 0x10  
seg001:000000000158C344                 addic     r7, r3, 0x20  
seg001:000000000158C348                 lwz       r6, 0(r3)  
seg001:000000000158C34C                 lfs       f1, 0x1C(r3)  
seg001:000000000158C350                 lwz       r8, 0x2C(r3)  
seg001:000000000158C354                 extsw     r3, r6  
seg001:000000000158C358                 extsw     r8, r8  
seg001:000000000158C35C                 bl        GET_PAUSED_MAP_STREAMING_REQUEST  
seg001:000000000158C360                 lwz       r4, 0(r31)  
seg001:000000000158C364                 stw       r3, 0(r4)  
seg001:000000000158C368                 addi      r1, r1, 0x80  
seg001:000000000158C36C                 b         loc_18037D8  
sorta makes sense though since the one above this native and GET_PAUSED_MAP_STREAMING_REQUEST are used together often in scripts  
```

## Parameters
* **player**: 
* **p1**: 
* **p2**: 
* **p3**: 
* **p4**: 
* **p5**: 
* **p6**: 
* **p7**: 
* **p8**: 
* **p9**: 
* **p10**: 
* **flags**: 

## Return value
