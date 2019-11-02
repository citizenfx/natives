---
ns: HUD
aliases: ["0xABA17D7CE615ADBF","_SET_LOADING_PROMPT_TEXT_ENTRY","_BEGIN_TEXT_COMMAND_BUSY_STRING"]
---
## BEGIN_TEXT_COMMAND_BUSYSPINNER_ON

```c
// 0xABA17D7CE615ADBF 0xCB7C8994
void BEGIN_TEXT_COMMAND_BUSYSPINNER_ON(char* string);
```

```
Initializes the text entry for the the text next to a loading prompt. All natives for for building UI texts can be used here  
BEGIN_TEXT_COMMAND_PRINT  
e.g  
void StartLoadingMessage(char *text, int spinnerType = 3)  
	{  
_SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
_SHOW_LOADING_PROMPT(spinnerType);  
	}  
/*OR*/  
	void ShowLoadingMessage(char *text, int spinnerType = 3, int timeMs = 10000)  
	{  
_SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
_SHOW_LOADING_PROMPT(spinnerType);  
WAIT(timeMs);  
_REMOVE_LOADING_PROMPT();  
	}  
These are some localized strings used in the loading spinner.  
"PM_WAIT"                   = Please Wait  
"CELEB_WPLYRS"              = Waiting For Players.  
"CELL_SPINNER2"             = Scanning storage.  
"ERROR_CHECKYACHTNAME" = Registering your yacht's name. Please wait.  
"ERROR_CHECKPROFANITY"   = Checking your text for profanity. Please wait.  
"FM_COR_AUTOD"                        = Just spinner no text  
"FM_IHELP_WAT2"                        = Waiting for other players  
"FM_JIP_WAITO"                            = Game options are being set  
"FMMC_DOWNLOAD"                    = Downloading  
"FMMC_PLYLOAD"                         = Loading  
"FMMC_STARTTRAN"                    = Launching session  
"HUD_QUITTING"                           =  Quiting session  
"KILL_STRIP_IDM"                         = Waiting for to accept  
"MP_SPINLOADING"                      = Loading  
```

## Parameters
* **string**: 

