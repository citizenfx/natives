---
ns: TASK
---
## SET_HIGH_FALL_TASK

```c
// 0x8C825BDC7741D37C 0xBBB26172
void SET_HIGH_FALL_TASK(Ped ped, Any duration, Any p2, Any p3);
```

Makes the ped ragdoll like when falling from a great height.
Playing with p2 and p3 changes the animation's style and behavior.
In most cases the ped moves backwards then fall on the ground or collapse with a very small change to its position.

- If p2 or p3 is 1 the ped will move backwards 
- If p2 = 0, p3 = 0 the ped will violently move backwards before falling.
- If p2 = 1, p3 = 1 the ped will violently move to a random direction.
- If p2 = 2, p3 = 2 the ped just ragdolls.

Good combinations tested:
p2: 100, p3: 1000
p2: 100, p3: 1
Even numbers appear to work best.


## Parameters
* **ped**: 
* **duration**: 
* **p2**: 
* **p3**: 

