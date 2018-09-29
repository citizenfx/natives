---
ns: PED
---
## SET_PED_HEAD_BLEND_DATA

```c
// 0x9414E18B9434C2FE 0x60746B88
void SET_PED_HEAD_BLEND_DATA(Ped ped, int shapeFirstID, int shapeSecondID, int shapeThirdID, int skinFirstID, int skinSecondID, int skinThirdID, float shapeMix, float skinMix, float thirdMix, BOOL isParent);
```

```
The "shape" parameters control the shape of the ped's face. The "skin" parameters control the skin tone. ShapeMix and skinMix control how much the first and second IDs contribute,(typically mother and father.) ThirdMix overrides the others in favor of the third IDs. IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.  
The IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.  
!!!Can someone add working example for this???  
try this:  
headBlendData headData;  
_GET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), &headData);  
SET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), headData.shapeFirst, headData.shapeSecond, headData.shapeThird, headData.skinFirst, headData.skinSecond  
	, headData.skinThird, headData.shapeMix, headData.skinMix, headData.skinThird, 0);  
For more info please refer to this topic.   
gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained  
```

## Parameters
* **ped**: 
* **shapeFirstID**: 
* **shapeSecondID**: 
* **shapeThirdID**: 
* **skinFirstID**: 
* **skinSecondID**: 
* **skinThirdID**: 
* **shapeMix**: 
* **skinMix**: 
* **thirdMix**: 
* **isParent**: 

