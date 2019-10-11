---
ns: HUD
aliases: ["_DRAW_NOTIFICATION"]
---
## END_TEXT_COMMAND_THEFEED_POST_TICKER

```c
// 0x2ED7843F8F801023 0x08F7AF78
int END_TEXT_COMMAND_THEFEED_POST_TICKER(BOOL isImportant, BOOL bHasTokens);
```

```
Draws a notification above the map and returns the notifications handle  
Color syntax:  
~r~ = Red  
~b~ = Blue  
~g~ = Green  
~y~ = Yellow  
~p~ = Purple  
~o~ = Orange  
~c~ = Grey  
~m~ = Darker Grey  
~u~ = Black  
~n~ = New Line  
~s~ = Default White  
~w~ = White  
~h~ = Bold Text  
~nrt~ = ???  
Special characters:  
¦ = Rockstar Verified Icon (U+00A6:Broken Bar - Alt+0166)  
÷ = Rockstar Icon (U+00F7:Division Sign - Alt+0247)  
∑ = Rockstar Icon 2 (U+2211:N-Ary Summation)  
Example C#:  
            Function.Call(Hash._ADD_TEXT_COMPONENT_STRING3, "Now I need you to bring the ~b~vehicle~w~ back to me!");  
----  
showInBrief==true: the notification will appear in the "Brief/Info" -> "Notifications" tab in the pause menu.  
showInBrief==false: the notification will NOT appear in the pause menu.  
```

## Parameters
* **isImportant**: 
* **bHasTokens**: 

## Return value
