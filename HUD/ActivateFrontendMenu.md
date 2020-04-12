---
ns: HUD
---
## ACTIVATE_FRONTEND_MENU

```c
// 0xEF01D36B9C9D0C7B 0x01D83872
void ACTIVATE_FRONTEND_MENU(Hash menuhash, BOOL togglePause, int component);
```


Does stuff like this:  
gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617  
Example:  
int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");  
ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);  
BOOL p1 is a toggle to define the game in pause.  
int p2 is unknown but -1 always works, not sure why though.  
[30/03/2017] ins1de :  
the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.  
Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);  
Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.  


Below is a list of all known Frontend Menu Hashes.

- FE_MENU_VERSION_SP_PAUSE
- FE_MENU_VERSION_MP_PAUSE
- FE_MENU_VERSION_CREATOR_PAUSE
- FE_MENU_VERSION_CUTSCENE_PAUSE
- FE_MENU_VERSION_SAVEGAME
- FE_MENU_VERSION_PRE_LOBBY
- FE_MENU_VERSION_LOBBY
- FE_MENU_VERSION_MP_CHARACTER_SELECT
- FE_MENU_VERSION_MP_CHARACTER_CREATION
- FE_MENU_VERSION_EMPTY
- FE_MENU_VERSION_EMPTY_NO_BACKGROUND
- FE_MENU_VERSION_TEXT_SELECTION
- FE_MENU_VERSION_CORONA
- FE_MENU_VERSION_CORONA_LOBBY
- FE_MENU_VERSION_CORONA_JOINED_PLAYERS
- FE_MENU_VERSION_CORONA_INVITE_PLAYERS
- FE_MENU_VERSION_CORONA_INVITE_FRIENDS
- FE_MENU_VERSION_CORONA_INVITE_CREWS
- FE_MENU_VERSION_CORONA_INVITE_MATCHED_PLAYERS
- FE_MENU_VERSION_CORONA_INVITE_LAST_JOB_PLAYERS
- FE_MENU_VERSION_CORONA_RACE
- FE_MENU_VERSION_CORONA_BETTING
- FE_MENU_VERSION_JOINING_SCREEN
- FE_MENU_VERSION_LANDING_MENU
- FE_MENU_VERSION_LANDING_KEYMAPPING_MENU


## Parameters
* **menuhash**: 
* **togglePause**: 
* **component**: 

