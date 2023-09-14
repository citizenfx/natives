---
ns: ENTITY
---
## PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM

```c
// 0xB9C54555ED30FBC4 0xEB4CBA74
BOOL PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(float x, float y, float z, float radius, Hash modelHash, int sceneID, char* animName, char* animDictName, float blendInDelta, float blendOutDelta, int flags, float moverBlendInDelta);
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **radius**: 
* **modelHash**: 
* **sceneID**: scene to attach entity to
* **animName**: name of the paired anim to play
* **animDictName**: name of the anim dictionary the anim is in
* **blendInDelta**: the rate at which the task will blend in; The blend in duration is 1.0 / BlendInDelta e.g. 1.0 / NORMAL_BLEND_IN -> 1.0 / 8.0 = 0.125 seconds 
* **blendOutDelta**: default: -8.0
* **flags**: default: 0 - I believe it is SYNCED_SCENE_PLAYBACK_FLAGS
* **moverBlendInDelta**: default: 1000.0


```
ENUM SYNCED_SCENE_PLAYBACK_FLAGS
	SYNCED_SCENE_NONE = 0,
	SYNCED_SCENE_USE_PHYSICS = 1,									// When this flag is set, the task will run in kinematic physics mode (other entities will collide, and be pushed out of the way)
	SYNCED_SCENE_TAG_SYNC_OUT = 2,									// when this flag is set, the task will do a tag synchronized blend out with the movement behaviour of the ped.
	SYNCED_SCENE_DONT_INTERRUPT = 4,								// When this flag is set, the scene will not be interrupted by ai events like falling, entering water / etc. Also blocks all weapon reactions / etc
	SYNCED_SCENE_ON_ABORT_STOP_SCENE = 8,							// When this flag is set, the scene will be stopped if this task is aborted
	SYNCED_SCENE_ABORT_ON_WEAPON_DAMAGE = 16,						// When this flag is set, the task will end if the ped takes weapon damage
	SYNCED_SCENE_BLOCK_MOVER_UPDATE = 32,							// When this flag is set, the task will not update the mover
	SYNCED_SCENE_LOOP_WITHIN_SCENE = 64,							// When this flag is set, the tasks with anims shorter than the scene will loop while the scene is playing
	SYNCED_SCENE_PRESERVE_VELOCITY = 128,							// When this flag is set, the task will preserve it's velocity on clean up (must be using physics)
	SYNCED_SCENE_EXPAND_PED_CAPSULE_FROM_SKELETON = 256,			// When this flag is set, the task will apply the CPED_RESET_FLAG_ExpandPedCapsuleFromSkeleton flag to the ped
	SYNCED_SCENE_ACTIVATE_RAGDOLL_ON_COLLISION = 512,				// When this flag is set, the ped will switch to ragdoll and fall down on making contact with a physical object (other than flat ground)
	SYNCED_SCENE_HIDE_WEAPON = 1024,								// When this flag is set, the ped's weapon will be hidden while the scene is playing
	SYNCED_SCENE_ABORT_ON_DEATH = 2048,								// When this flag is set, task will end if the ped dies, even if the SYNCED_SCENE_DONT_INTERRUPT flag is set.
	SYNCED_SCENE_VEHICLE_ABORT_ON_LARGE_IMPACT = 4096,				// When running the scene on a vehicle, allow the scene to abort if the vehicle takes a heavy collision from another vehicle
	SYNCED_SCENE_VEHICLE_ALLOW_PLAYER_ENTRY = 8192,					// When running the scene on a vehicle, allow player peds to enter the vehicle
	SYNCED_SCENE_PROCESS_ATTACHMENTS_ON_START = 16384,				// When this flag is set, process the attachments at the start of the scene
	SYNCED_SCENE_NET_ON_EARLY_NON_PED_STOP_RETURN_TO_START = 32768, // When this flag is set, a non-ped entity will be returned to their starting position if the scene finishes early
	SYNCED_SCENE_SET_PED_OUT_OF_VEHICLE_AT_START = 65536,			// When this flag is set, The ped will be set out of his vehicle when the task starts.
	SYNCED_SCENE_NET_DISREGARD_ATTACHMENT_CHECKS = 131072			// When this flag is set, the attachment checks done in CNetworkSynchronisedScenes::Update when pending start will be disregarded
ENDENUM
```

## Return value
