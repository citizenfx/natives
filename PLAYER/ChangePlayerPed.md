---
ns: PLAYER
---
## CHANGE_PLAYER_PED

```c
// 0x048189FAC643DEEE 0xBE515485
void CHANGE_PLAYER_PED(Player player, Ped ped, BOOL b2, BOOL resetDamage);
```

```
b2 and/or b3 maybe got something to do with keeping values from the last ped. Both of them set to 1 works great. <br/><br/>Examples from the decompiled scripts:<br/><br/>PLAYER::CHANGE_PLAYER_PED(PLAYER::PLAYER_ID(), l_5C0[4/*14*/], 0, 1);<br/>PLAYER::CHANGE_PLAYER_PED(PLAYER::PLAYER_ID(), a_0[a_0._f7/*1*/], a_2, 0);<br/><br/><br/>===========================================================<br/>The only way I ever got this to work in GTA Online once is by setting both to 0, 0. However, when you switch from your online character to whomever, your character will start walking away 'as if you left the game.' If from there you attempt to call this native once more to switch back to you online ped. You will freeze or if you try changing to another ped. I've tried all posibilities so far.<br/>1, 1 (Freeze), 0, 0(Works Once), 1, 0 & 0, 1 (Freeze). Note of course trying to call this on another online player will crash. Anyone have any idea if implementing a blr within the xex itself on a possible check if it would prevent this freezing?<br/>===========================================================  
```

## Parameters
* **player**: 
* **ped**: 
* **b2**: 
* **resetDamage**: 

