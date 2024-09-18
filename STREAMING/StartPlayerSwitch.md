---
ns: STREAMING
---
## START_PLAYER_SWITCH

```c
// 0xFAA23F2CBA159D67 0x0829E975
void START_PLAYER_SWITCH(Ped from, Ped to, int flags, int switchType);
```

```c
enum ePlayerSwitchType  
{  
	SWITCH_TYPE_AUTO = 0,
	SWITCH_TYPE_LONG = 1,
	SWITCH_TYPE_MEDIUM = 2,
	SWITCH_TYPE_SHORT = 3
};  
```


```c
enum eSwitchFlags {
	SKIP_INTRO = 1,
	SKIP_OUTRO = 2,
	PAUSE_BEFORE_PAN = 4,
	PAUSE_BEFORE_OUTRO = 8,
	SKIP_PAN = 16,
	UNKNOWN_DEST = 32,
	DESCENT_ONLY = 64,
	START_FROM_CAMPOS = 128,
	PAUSE_BEFORE_ASCENT = 256,
	PAUSE_BEFORE_DESCENT = 512,
	ALLOW_SNIPER_AIM_INTRO = 1024,
	ALLOW_SNIPER_AIM_OUTRO = 2048,
	SKIP_TOP_DESCENT = 4096,
	SUPPRESS_OUTRO_FX = 8192,
	SUPPRESS_INTRO_FX = 16384,
	DELAY_ASCENT_FX = 32768
}
```

## Parameters
* **from**: 
* **to**: 
* **flags**: Refer to `eSwitchFlags`
* **switchType**: Refer to `ePlayerSwitchType`
