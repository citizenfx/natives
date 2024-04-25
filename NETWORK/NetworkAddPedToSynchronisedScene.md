---
ns: NETWORK
---
## NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE

```c
// 0x742A637471BCECD9 0xB386713E
void NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE(Ped ped, int netScene, char* animDict, char* animClip, float blendInSpeed, float blendOutSpeed, int syncedSceneFlags, int ragdollFlags, float moverBlendInDelta, int ikFlags);
```

Adds a ped to a networked synchronised scene.

Synchronized scene playback flags (Also works in other `NETWORK_ADD_*_TO_SYNCHRONISED_SCENE` natives):
| Value     |                  Name                     |                                                             Notes                                                                |
| :-------: | :---------------------------------------: | :------------------------------------------------------------------------------------------------------------------------------: |
| `0`       |  None                                     | No flag set.                                                                                                                     |
| `1`       | USE_PHYSICS                               | Allows the ped to have physics during the scene.                                                                                 |
| `2`       | TAG_SYNC_OUT                              | The task will do a tag synchronized blend out with the movement behaviour of the ped.                                            |
| `4`       | DONT_INTERRUPT                            | The scene will not be interrupted by external events.                                                                            |
| `8`       | ON_ABORT_STOP_SCENE                       | The scene will be stopped if the scripted task is aborted.                                                                       |
| `16`      | ABORT_ON_WEAPON_DAMAGE                    | The scene will be stopped if the ped is damaged by a weapon.                                                                     |
| `32`      | BLOCK_MOVER_UPDATE                        | The task will not update the mover.                                                                                              |
| `64`      | LOOP_WITHIN_SCENE                         | Animations within this scene will be looped until the scene is finished.                                                         |
| `128`     | PRESERVE_VELOCITY                         | The task will keep it's velocity when the scene is cleaned up/stopped. Do note that the `USE_PHYSICS` flag must also be present. |
| `256`     | EXPAND_PED_CAPSULE_FROM_SKELETON          | The task will apply the `ExpandPedCapsuleFromSkeleton` reset flag to the ped (See [`SET_PED_RESET_FLAG`](#_0xC1E8A365BF3B29F2)). |
| `512`     | ACTIVATE_RAGDOLL_ON_COLLISION             | The ped will be ragdoll if it comes in contact with an object.                                                                   |
| `1024`    | HIDE_WEAPON                               | The ped's current weapon will be hidden during the scene.                                                                        |
| `2048`    | ABORT_ON_DEATH                            | The synchronised scene will be aborted if the ped dies.                                                                          |
| `4096`    | VEHICLE_ABORT_ON_LARGE_IMPACT             | If the scene is running on a vehicle, then it will be aborted if the vehicle takes a heavy collision with another vehicle.       |
| `8192`    | VEHICLE_ALLOW_PLAYER_ENTRY                | If the scene is on a vehicle, it allows players to enter it.                                                                     |
| `16384`   | PROCESS_ATTACHMENTS_ON_START              | Attachments will be processed at the start of the scene.                                                                         |
| `32768`   | NET_ON_EARLY_NON_PED_STOP_RETURN_TO_START | A non-ped entity will be returned to their starting position if the scene finishes early.                                        |
| `65536`   | SET_PED_OUT_OF_VEHICLE_AT_START           | If the ped is in a vehicle when the scene starts, it will be set out of the vehicle.                                             |
| `131072`  | NET_DISREGARD_ATTACHMENT_CHECKS           | Attachment checks will be disregarded when the scene is running.                                                                 |

These flags can be combined with the `|` operator.

## Parameters
* **ped**: Ped handle to add.
* **netScene**: Network scene handle (Returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#_0x7CD6BC4C2BBDD526))
* **animDict**: Dictionary of the animation that the ped will play. Network synchronised scenes don't require the animation dictionary to be loaded, unlike [`TASK_SYNCHRONIZED_SCENE`](#_0xEEA929141F699854).
* **animClip**: Clip name from the anim dictionary that the ped will play.
* **blendInSpeed**: Blend in speed. The lower the value, the slower the blend in speed is. Default is `8.0`.
* **blendOutSpeed**: Blend out speed. This should be the negative value of `blendInSpeed`. Default is `-8.0`.
* **syncedSceneFlags**: Synchronized scene flags bit field from the above table.
* **ragdollFlags**: Ragdoll blocking flags. Default is `0`.
* **moverBlendInDelta**: Determines the rate at which the mover blends in to the scene. Useful for ensuring a seamless entry onto a synchronized scene. Default is `1000.0`.
* **ikFlags**: Inverse kinematics flags. Default is `0`.

