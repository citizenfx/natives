---
ns: HUD
aliases: ["0x15CFA549788D35EF","_THEFEED_ENABLE"]
---
## _THEFEED_DISPLAY_LOADING_SCREEN_TIPS

```c
// 0x15CFA549788D35EF
void _THEFEED_DISPLAY_LOADING_SCREEN_TIPS();
```

Displays loading screen tips. 
Seems to do the same as [`_HUD_DISPLAY_LOADING_SCREEN_TIPS`](#_0x488043841BBE156F).
Requires [`THEFEED_AUTO_POST_GAMETIPS_ON`](#_0x56C8B608CFD49854) to be called beforehand.
Call [`_THEFEED_DISABLE_LOADING_SCREEN_TIPS`](#_0x32888337579A5970) to disable immediately, or [`THEFEED_AUTO_POST_GAMETIPS_OFF`](#_0xADED7F5748ACAFE6) to disable after the current tip.

Example result:
![](https://i.imgur.com/hzaHuPb.png)

## Example

```lua
ThefeedDisplayLoadingScreenTips()
```
