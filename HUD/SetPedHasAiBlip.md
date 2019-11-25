---
ns: HUD
aliases: ["0xD30C50DF888D58B5","_SET_PED_ENEMY_AI_BLIP","_SET_PED_AI_BLIP"]
---
## SET_PED_HAS_AI_BLIP

```c
// 0xD30C50DF888D58B5 0x96C4C4DD
void SET_PED_HAS_AI_BLIP(Ped ped, BOOL hasCone);
```

```
Previously named _0xD30C50DF888D58B5, this native turns on the AI blip on the specified ped. It also disappears automatically when the ped is too far or if the ped is dead. You don't need to control it with other natives.   
See gtaforums.com/topic/884370-native-research-ai-blips for further information.  
Note: Everything said at the bottom is only valid for persistant peds, as AI blips seem to behave differently for non-persistant peds.  
• To create an AI blip, you must use UI::0xD30C50DF888D58B5() (_SET_PED_ENEMY_AI_BLIP). It has two arguments: "ped" which is the ped you want to AI blip to be linked to, and "showViewCones" which needs to be true for AI blips to appear.  
• To check if a ped has an AI blip, you can use UI::DOES_PED_HAVE_AI_BLIP(Ped ped), which returns a simple bool.  
• By default, AI blips never disappear. If you want them to disappear when you're at a certain distance from a ped, you can use UI::0x97C65887D4B37FA9(Ped ped, float distance) (_SET_AI_BLIP_MAX_DISTANCE)  
• By default, the blip only appears when you're in combat with the specified ped. If you want it to be always displayed, you can use UI::x0C4BBF625CA98C4E() (_IS_AI_BLIP_ALWAYS_SHOWN). It also has two arguments: "ped", and a flag. If the flag is set to true, the blip will always be displayed. If it's set to false, the AI blip will have its default behaviour.  
• By default, a view cone is displayed with the blip (basically a blue surface that represents the field of view of the ped, like in vanilla stealth missions). If you don't want it, you can disable it with UI::HIDE_SPECIAL_ABILITY_LOCKON_OPERATION(Ped ped, bool flag). If the flag is set to true, the view cone is displayed. If the flag is set to false, it is not.  
• Finally, there's actually 3 types of AI blips:  
0 - the default, red, "enemy" blip  
1 - a weird, semi-transparent, nameless, yellow blip  
2 - the blue "friend" blip  
You can change an AI blip's type with UI::0xE52B8E7F85D39A08(Ped ped, int type) (_SET_AI_BLIP_TYPE).  
```

## Parameters
* **ped**: 
* **hasCone**: 

