---
ns: MISC
---
## SET_SUPER_JUMP_THIS_FRAME

```c
// 0x57FFF03E423A4C0B 0x86745EF3
cs_type(int) void SET_SUPER_JUMP_THIS_FRAME(Player player);
```

Allows the player to perform super jumps. This function must be called every frame for it to work.
It basically OR's a flag for a single frame, allowing the ped to perform a super jump only when the flag is set.


## Parameters
* **player**: The player we are setting this for.

## Return value

## Examples
```lua
Citizen.CreateThread(function()
    while true do
        SetSuperJumpThisFrame(PlayerId())
        -- Try enabling the two down below if you also want invincibility and no ragdoll effects
        --SetPlayerInvincible(PlayerId(), true)
        --SetPedCanRagdoll(PlayerPedId(), false)
        Citizen.Wait(0)
    end
end)
```