---
ns: TASK
---
## SET_HIGH_FALL_TASK

```c
// 0x8C825BDC7741D37C 0xBBB26172
void SET_HIGH_FALL_TASK(Ped ped, int p1, Any p2, Any p3);
```

```
Makes the ped ragdoll like when falling from a great heigh.
Playing with p1 and p2 changes the animation's style and behavior.
In most cases the ped moves backwards then fall on the ground or collapse with a very small change to it's position.
If p1 or p2 is 1 the ped will move backwards  
On p1: 0, p2: 0 the ped will violently move backwards before falling.
On p1: 1, p2: 1 the ped will violently move to a random direction.
On p1: 2, p2: 2 the ped just collapses like a bag of potato.
Good combinations tried:
p1: 100 p2: 1000
p1: 100 p2: 1
Even numbers work best
```

## Parameters
* **ped**: 
* **duration**: 
* **p1**: 
* **p2**: 

