---
ns: TASK
---
## GET_SCRIPT_TASK_STATUS

```c
// 0x77F1BEB8863288D5 0xB2477B23
int GET_SCRIPT_TASK_STATUS(Ped ped, Hash taskHash);
```

Gets the status of a spesifed script-assigned task on the given ped.  
taskHash list: https://alloc8or.re/gta5/doc/enums/eScriptTaskHash.txt

Returns:  
0: waiting to start task  
1: doing task  
2: is getting hindered (only partially reliable)  
7: finished/not doing task  

## Parameters
* **ped**: The ped the task is running on
* **taskHash**: The hash of the task

## Return value
The status of the script-assigned task.  

## Examples
```lua
local playerPed = PlayerPedId()
local coords = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 6.0, 0.0)
TaskGoStraightToCoord(playerPed, coords, 1.0, 5000, GetEntityHeading(playerPed), 0.15)

Citizen.CreateThread(function()
    while true do
        local taskStatus = GetScriptTaskStatus(PlayerPedId(), "SCRIPT_TASK_GO_STRAIGHT_TO_COORD")
        print(taskStatus)
        if taskStatus == 7 then print("task was finished!"); break end
        Citizen.Wait(250)
    end
end)
```
