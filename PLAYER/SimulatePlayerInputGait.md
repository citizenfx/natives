---
ns: PLAYER
---
## SIMULATE_PLAYER_INPUT_GAIT

```c
// 0x477D5D63E63ECA5D 0x0D77CC34
void SIMULATE_PLAYER_INPUT_GAIT(Player player, float amount, int gaitType, float rotationSpeed, BOOL p4, BOOL p5);
```

This is to make the player walk without accepting input.

Call this native every frame so you can control the direction of your ped.


## Parameters
* **player**: The player to target (always your local player id).
* **amount**: For game pads, using anything less than 1.0 will make it partially press analog controls (like sticks/triggers).
* **gaitType**: Value in increments of 100's. 2000, 500, 300, 200, etc. Set to -1 if you want your ped to walk forever.
* **rotationSpeed**: Determines the counterclockwise rotation angle when walking.
* **p4**: Always true
* **p5**: Always false

## Examples
```cs
SimulatePlayerInputGait(Game.Player.Handle, 1f, 100, 1f, 1, 0); //Player will go forward for 100ms
SimulatePlayerInputGait(Game.Player.Handle, 1f, -1, 0f, 1, 0); //Player will go straight forward forever, stop when facing walls or obstacles.
```
