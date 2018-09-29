---
ns: ENTITY
---
## GET_ENTITY_BONE_INDEX_BY_NAME

```c
// 0xFB71170B7E76ACBA 0xE4ECAC22
int GET_ENTITY_BONE_INDEX_BY_NAME(Entity entity, char* boneName);
```

```
Returns the index of the bone. If the bone was not found, -1 will be returned.   
list:  
pastebin.com/D7JMnX1g  
BoneNames:  
	chassis,  
	windscreen,  
	seat_pside_r,  
	seat_dside_r,  
	bodyshell,  
	suspension_lm,  
	suspension_lr,  
	platelight,  
	attach_female,  
	attach_male,  
	bonnet,  
	boot,  
	chassis_dummy,	//Center of the dummy  
	chassis_Control,	//Not found yet  
	door_dside_f,	//Door left, front  
	door_dside_r,	//Door left, back  
	door_pside_f,	//Door right, front  
	door_pside_r,	//Door right, back  
	Gun_GripR,  
	windscreen_f,  
	platelight,	//Position where the light above the numberplate is located  
	VFX_Emitter,  
	window_lf,	//Window left, front  
	window_lr,	//Window left, back  
	window_rf,	//Window right, front  
	window_rr,	//Window right, back  
	engine,	//Position of the engine  
	gun_ammo,  
	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4".  
	wheel_lf,	//Wheel left, front  
	wheel_lr,	//Wheel left, back  
	wheel_rf,	//Wheel right, front  
	wheel_rr,	//Wheel right, back  
	exhaust,	//Exhaust. shows only the position of the stock-exhaust  
	overheat,	//A position on the engine(not exactly sure, how to name it)  
	misc_e,	//Not a car-bone.  
	seat_dside_f,	//Driver-seat  
	seat_pside_f,	//Seat next to driver  
	Gun_Nuzzle,  
	seat_r  
I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.  
```

## Parameters
* **entity**: 
* **boneName**: 

## Return value
