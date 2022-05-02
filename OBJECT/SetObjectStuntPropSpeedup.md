---
ns: OBJECT
aliases: ["0x96EE0EBA0163DF80"]
---
## _SET_OBJECT_STUNT_PROP_SPEEDUP

```c
// 0x96EE0EBA0163DF80
void _SET_OBJECT_STUNT_PROP_SPEEDUP(Object object, int intensity);
```

Sets the intensity of Speed Boost and Slow Down props.

The corresponding values for Speed Boosts in the Creator are:  
Weak: `15`  
Normal: `25`  
Strong: `35`  
Extra Strong: `45`  
Ultra Strong: `100`

For Slow Downs:  
Weak: `44`  
Normal: `30`  
Strong: `16`

## Parameters
* **object**: A Speed Boost or Slow Down prop
* **intensity**: Ranges from `1`-`254`, other values are ignored. Higher values will increase the effect of Speed Boosts and decrease the effect of Slow Downs.

