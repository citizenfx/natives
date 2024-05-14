---
ns: PED
aliases: ["0xFF4803BC019852D9"]
---
## SET_HEALTH_SNACKS_CARRIED_BY_ALL_NEW_PEDS

```c
// 0xFF4803BC019852D9 0xD41C9AED
void SET_HEALTH_SNACKS_CARRIED_BY_ALL_NEW_PEDS(float probability, int gainedHealth);
```

Related to Peds dropping pickup_health_snack; probability is a value between [0.0, 1.0] that corresponds to the drop rate. gainedHealth is how much Health is gained from a snack.


```
https://alloc8or.re/gta5/nativedb/?n=0x83A169EABCDB10A2?n=0xFF4803BC019852D9
```

## Parameters
* **probability**: Probability that a ped will drop a snack. 0.0f means snacks are never dropped, 1.0f means snacks are always dropped.
* **gainedHealth**: How much Health will be gained from the snack

## Return value

