---
ns: OBJECT
---
## CREATE_MONEY_PICKUPS

```c
// 0x0589B5E791CE9B2B 0x36C9A5EA
void CREATE_MONEY_PICKUPS(float x, float y, float z, int value, int amount, Hash model);
```

```
Spawns one or more money pickups.  
x: The X-component of the world position to spawn the money pickups at.  
y: The Y-component of the world position to spawn the money pickups at.  
z: The Z-component of the world position to spawn the money pickups at.  
value: The combined value of the pickups (in dollars).  
amount: The number of pickups to spawn.  
model: The model to use, or 0 for default money model.  
Example:  
CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  
Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  
==============================================  
Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **value**: 
* **amount**: 
* **model**: 

