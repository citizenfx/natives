---
ns: PED
---
## IS_PED_INJURED

```c
// 0x84A2DD9AC37C35C1 0x2530A087
BOOL IS_PED_INJURED(Ped ped);
```

Indicates whether this ped's health is below its injured threshold.
The default threshold is 100, these are stored in the `pedhealth.meta` file located in `common:\data\`

### Below are some of the values

| InjuredHealthThreshold | Name      |
|------------------------|-----------|
| 100.000000             | Strong    |
| 100.000000             | Average   |
| 100.000000             | Weak      |


## Parameters
* **ped**: The ped to check for injuries.

## Return value
Returns `true` if the ped is injured, `false` otherwise.