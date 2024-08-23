---
ns: TASK
---
## TASK_PERFORM_SEQUENCE_FROM_PROGRESS

```c
// 0x89221B16730234F0 0xFA60601B
void TASK_PERFORM_SEQUENCE_FROM_PROGRESS(Ped ped, int taskIndex, int progress1, int progress2);
```


## Parameters
* **ped**: The ped to perform the task on
* **taskIndex**:
* **progress1**: The progress to start from
* **progress2**: Unknown what it does, it has to be set higher than 0 to not break the sequence

## Examples
```lua
Citizen.CreateThread(function()
    local animDict = 'timetable@ron@ig_5_p3'

    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Wait(0)
    end

    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    -- you can change the model, but you might have to change the offsets below.
    local objModelHash = `prop_bench_01a`

    local obj = GetClosestObjectOfType(pos.x, pos.y, pos.z, 5.0, objModelHash, false, false, false)
    if obj == 0 then
        print("No valid object within range!")
        return
    end

    local tgtPos = GetOffsetFromEntityInWorldCoords(obj, 0.0, -0.7, 0.0)

    -- open the task sequence so we can get our sequence id
    local sequence = OpenSequenceTask()

    local desiredHeading = GetEntityHeading(obj) - 180.0

    -- go to the entities offset
    TaskGoStraightToCoord(nil, tgtPos.x, tgtPos.y, tgtPos.z, 1.0, 4000, desiredHeading, 1.0)

    -- sit on the bench indefinitely (you can change -1 here to however long you want to sit)
    TaskPlayAnim(nil, animDict, 'ig_5_p3_base', 8.0, 8.0, -1, 1)

    -- close the sequence so we can perform it
    CloseSequenceTask(sequence)

    -- perform the sequence, this will not work if the sequence is still open.
    -- note that progress1 is set to 1, this means it will skip the first sequence
    TaskPerformSequenceFromProgress(ped, sequence, 1, 1)

    -- free the sequence slot so it can be re-used
    ClearSequenceTask(sequence)

    -- cleanup the animation dict so the engine can remove it when its no longer needed
    RemoveAnimDict(animDict)
end)
```
```cs
using CitizenFX.Core;
using static CitizenFX.Core.Native.API;

string animDict = "timetable@ron@ig_5_p3";
RequestAnimDict(animDict);
while (!HasAnimDictLoaded(animDict))
{
	await BaseScript.Delay(0);
}

int ped = PlayerPedId();
Vector3 pos = GetEntityCoords(ped, false);

// you can change the model, but you might have to change the offsets below.
uint hash = Game.GenerateHashASCII("prop_bench_01a");

int obj = GetClosestObjectOfType(pos.X, pos.Y, pos.Z, 5.0f, hash, false, false, false);
if (obj == 0)
{
	Debug.WriteLine("No valid object within range!");
	return;
}

Vector3 tgtPos = GetOffsetFromEntityInWorldCoords(obj, 0.0f, -0.7f, 0.0f);

int sequenceId = 0;
// open the task sequence so we can get our sequence id
OpenSequenceTask(ref sequenceId);

float desiredHeading = GetEntityHeading(obj) - 180.0f;

// go to the entitys offset
TaskGoStraightToCoord(0, tgtPos.X, tgtPos.Y, tgtPos.Z, 1.0f, 4000, desiredHeading, 1.0f);

// sit on the bench indefinitely (you can change -1 here to however long you want to sit)
TaskPlayAnim(0, animDict, "ig_5_p3_base", 8.0f, 8.0f, -1, 1, 1.0f, false, false, false);

// close the sequence so we can perform it
CloseSequenceTask(sequenceId);

// perform the sequence, this will not work if the sequence is still open.
// note that progress1 is set to 1, this means it will skip the first sequence
TaskPerformSequenceFromProgress(ped, sequenceId, 1, 1);

// free the sequence slot so it can be re-used
ClearSequenceTask(ref sequenceId);

// cleanup the animation dict so the engine can remove it when its no longer needed
RemoveAnimDict(animDict);
```
