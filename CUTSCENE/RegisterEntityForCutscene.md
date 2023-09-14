---
ns: CUTSCENE
---
## REGISTER_ENTITY_FOR_CUTSCENE

```c
// 0xE40C1C56DF95C2E8 0x7CBC3EC7
void REGISTER_ENTITY_FOR_CUTSCENE(Entity cutsceneEntity, char* cutsceneEntName, int cutsceneUsage, Hash modelHash, int entOptionFlags);
```

This can only be run once [`CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY`](#_0xB56BBBCC2955D9CB) is true, but can be run before [`HAS_CUTSCENE_LOADED`](#_0xC59F528E9AB9F339)

## Parameters
* **cutsceneEntity**: Entity to put into the cutscene.
* **cutsceneEntName**: cHandle of cutscene entity, i.e Michael, MP_1, MP_4, Lamar
* **cutsceneUsage**: 
* **modelHash**: Not strictly neccasary, often 0 in R* scripts
* **entOptionFlags**: CUTSCENE_ENTITY_OPTION_FLAGS - 0 for SP, 64 for MP seemingly

```
ENUM CUTSCENE_USAGE
	CU_ANIMATE_EXISTING_SCRIPT_ENTITY,								//Get the cut scene to animate a script controlled entity
	CU_ANIMATE_AND_DELETE_EXISTING_SCRIPT_ENTITY,		//Get the cutscene to animate a script controled entity and then delete it. e.g. if the entity dies in the scene			
	CU_CREATE_AND_ANIMATE_NEW_SCRIPT_ENTITY,		//Get the cut scene to create and script that will be handed to script control at the end of the scene. e.g. player meets a buddy in the scene
	CU_DONT_ANIMATE_ENTITY													//Tell the the cutscene that this ped is dead and should not appera in the scene. 
ENDENUM
ENUM CUTSCENE_ENTITY_OPTION_FLAGS
	CEO_NONE = 0,						
	CEO_PRESERVE_FACE_BLOOD_DAMAGE = 1,	// If specified, leave facial blood decals when the cutscene starts. These are removed by default.
	CEO_PRESERVE_BODY_BLOOD_DAMAGE = 2,	// If specified, leave body damage decals when the cutscene starts. By default these are reduced, but not completely removed
	CEO_REMOVE_BODY_BLOOD_DAMAGE = 4,	// If specified, body damage decals will be completely cleared (instead of just reduced) when the cutscene starts
	CEO_CLONE_DAMAGE_TO_CS_MODEL = 8,	// If specified, if you have a reposition only entity, then any damage is cloned from that to the animated entity
	CEO_RESET_CAPSULE_AT_END = 16,		// If specified, the character's capsule will be reset so that it is vertical at the end of cutscenes.
	CEO_IS_CASCADE_SHADOW_FOCUS_ENTITY_DURING_EXIT = 32,	// If specified, this entity will be used as the focus for the cascade shadow system during seamless exits.  Required when characters get into vehicles at the end of cutscenes.
	CEO_IGNORE_MODEL_NAME = 64,								// If specified, force the cutscene to animate the registered ped using the given scene handle, even if the model name doesn't match.
	CEO_PRESERVE_HAIR_SCALE = 128,							// If specified, the characters hair scale is frozen when the cutscene starts.
	CEO_INSTANT_HAIR_SCALE_SETUP = 256,						// If specified, the characters hair scale will snap to it's new value when the cutscene starts, otherwise it will lerp.
	CEO_DONT_RESET_PED_CAPSULE = 512, 
	CEO_UPDATE_AS_REAL_DOOR = 1024
ENDENUM
```
## Examples
```lua
    -- An example that allows for registering non player_zero peds in place, i.e MP peds.
    RequestCutscene("family_5_mcs_5_p5", 8)
    repeat Wait(0) until CanRequestAssetsForCutsceneEntity()
    SetCutscenePedComponentVariationFromPed("Michael", PlayerPedId(), 0)
    -- Registering can occur at any point past here before starting the cutscene.
    RegisterEntityForCutscene(PlayerPedId(), "Michael", 0, 0, 64)
    repeat Wait(0) until HasCutsceneLoaded()
    StartCutscene(0)
```