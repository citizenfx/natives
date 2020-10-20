---
ns: TASK
---
## TASK_SCRIPTED_ANIMATION

```c
// 0x126EF75F1E17ABE5 0xFC2DCF47
void TASK_SCRIPTED_ANIMATION(Ped ped, Any* p1, Any* p2, Any* p3, float p4, float p5);
```

```
From fm_mission_controller.c:  
reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1);  
	vVar28 = {0.094f, 0.02f, -0.005f};  
	vVar29 = {-92.24f, 63.64f, 150.24f};  
	func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1);  
	set_entity_lod_dist(net_to_ent(uVar30), 500);  
	attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1);  
	Var31.imm_4 = 1065353216;  
	Var31.imm_5 = 1065353216;  
	Var31.imm_9 = 1065353216;  
	Var31.imm_10 = 1065353216;  
	Var31.imm_14 = 1065353216;  
	Var31.imm_15 = 1065353216;  
	Var31.imm_17 = 1040187392;  
	Var31.imm_18 = 1040187392;  
	Var31.imm_19 = -1;  
	Var32.imm_4 = 1065353216;  
	Var32.imm_5 = 1065353216;  
	Var32.imm_9 = 1065353216;  
	Var32.imm_10 = 1065353216;  
	Var32.imm_14 = 1065353216;  
	Var32.imm_15 = 1065353216;  
	Var32.imm_17 = 1040187392;  
	Var32.imm_18 = 1040187392;  
	Var32.imm_19 = -1;  
	Var31 = 1;  
	Var31.imm_1 = "weapons@misc@jerrycan@mp_male";  
	Var31.imm_2 = "idle";  
	Var31.imm_20 = 1048633;  
	Var31.imm_4 = 0.5f;  
	Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R");  
	task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f);  
	set_model_as_no_longer_needed(joaat("prop_ld_case_01"));  
	remove_anim_dict("anim@heists@biolab@");  
```

## Parameters
* **ped**: 
* **p1**: 
* **p2**: 
* **p3**: 
* **p4**: 
* **p5**: 

