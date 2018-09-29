---
ns: HUD
aliases: ["_ADD_TEXT_COMPONENT_STRING"]
---
## ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME

```c
// 0x6C188BE134E074AA 0x27A244D8
void ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(char* text);
```

```
• Description :  
Processes a string and removes the player name(max len 99)  
You can use this function to create notifications/subtitles  
		--------------------------------------------------------------------  
		• Usage(Colors) :  
~r~ = red  
~y~ = yellow  
~g~ = green  
~b~ = light blue  
~w~ = white  
~p~ = purple  
~n~ = new line  
		--------------------------------------------------------------------  
		• Usage(Input) :  
		~INPUT_CONTEXT~ will show button symbol (regarding last input device -> keyboard/gamepad)  
		example:  
		string info = "Context action is assigned to ~INPUT_CONTEXT~!";  
		--------------------------------------------------------------------  
		• Example (C++):  
		void ShowNotification(char *text)    
		{   
       UI::_SET_NOTIFICATION_TEXT_ENTRY("STRING");   
       UI::ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);   
       UI::_DRAW_NOTIFICATION(FALSE, FALSE); // if first param = 1, the message flashes 1 or 2 times  
		}  
		• Colors example :   
		string red = "~r~Red test";  
		string white_and_yellow = "~w~White and ~y~yellow";  
		string text_with_double_line = "First line.~n~Second line";  
		This native (along with 0x5F68520888E69014 and 0x94CF4AC034C9C986) do not actually filter anything. They simply add the provided text (as of 944)  
		Used to be known as _ADD_TEXT_COMPONENT_STRING  
```

## Parameters
* **text**: 

