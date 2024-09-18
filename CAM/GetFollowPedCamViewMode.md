---
ns: CAM
---
## GET_FOLLOW_PED_CAM_VIEW_MODE

```c
// 0x8D4D46230B2C353A 0xA65FF946
int GET_FOLLOW_PED_CAM_VIEW_MODE();
```

```c
// view mode enumeration
enum eCamViewMode 
{
	THIRD_PERSON_NEAR = 0,
	THIRD_PERSON_MEDIUM = 1,
	THIRD_PERSON_FAR = 2,
	CINEMATIC = 3,
	FIRST_PERSON = 4,
};
```

## Return value
Returns a value from the view mode enumeration
