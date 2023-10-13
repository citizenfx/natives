---
ns: PLAYER
---
## SIMULATE_PLAYER_INPUT_GAIT

```c
// 0x477D5D63E63ECA5D 0x0D77CC34
void SIMULATE_PLAYER_INPUT_GAIT(Player player, float moveBlendRatio, int timer, float heading, BOOL useRelativeHeading, BOOL noInputInterruption);
```

This is to make the player walk without accepting input.

Call this native every frame so you can control the direction of your ped.


## Parameters
* **player**: The player to target (always your local player id).
* **moveBlendRatio**: move blend ratio to simulate as if the player were inputing it on the controller. (1.0: walk; 2.0: run; 3.0: sprint)
* **timer**: this can be interrupted if left stick is touched, in millisecond. 
* **heading**: simulated heading. Range from -180.0 to 180.0 degrees.
* **useRelativeHeading**: if the heading is global or local to the ped.
* **noInputInterruption**: if true, don't break out on input changes, it just times out.

## Examples
```cs
SimulatePlayerInputGait(Game.Player.Handle, 1f, 100, 1f, 1, 0); //Player will go forward for 100ms
SimulatePlayerInputGait(Game.Player.Handle, 1f, -1, 0f, 1, 0); //Player will go straight forward forever, stop when facing walls or obstacles.
```
