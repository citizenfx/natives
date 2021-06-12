---
ns: HUD
aliases: ["0x15803FEC3B9A872B","_DRAW_FRONTEND_ALERT"]
---
## _SET_WARNING_MESSAGE_WITH_ALERT

```c
// 0x15803FEC3B9A872B
cs_type(Any) void _SET_WARNING_MESSAGE_WITH_ALERT(char* labelTitle, char* labelMsg, int p2, int p3, char* labelMsg2, cs_type(int) BOOL p5, int p6, int p7, char* p8, char* p9, BOOL background, int errorCode);
```

instructionalKey enum list:
```
Buttons = {
      Empty = 0,
      Select = 1, -- (RETURN)
      Ok = 2, -- (RETURN)
      Yes = 4, -- (RETURN)
      Back = 8, -- (ESC)
      Cancel = 16, -- (ESC)
      No = 32, -- (ESC)
      RetrySpace = 64, -- (SPACE)
      Restart = 128, -- (SPACE)
      Skip = 256, -- (SPACE)
      Quit = 512, -- (ESC)
      Adjust = 1024, -- (ARROWS)
      SpaceKey = 2048, -- (SPACE)
      Share = 4096, -- (SPACE)
      SignIn = 8192, -- (SPACE)
      Continue = 16384, -- (RETURN)
      AdjustLeftRight = 32768, -- (SCROLL L/R)
      AdjustUpDown = 65536, -- (SCROLL U/D)
      Overwrite = 131072, -- (SPACE)
      SocialClubSignup = 262144, -- (RETURN)
      Confirm = 524288, -- (RETURN)
      Queue = 1048576, -- (RETURN)
      RetryReturn = 2097152, -- (RETURN)
      BackEsc = 4194304, -- (ESC)
      SocialClub = 8388608, -- (RETURN)
      Spectate = 16777216, -- (SPACE)
      OkEsc = 33554432, -- (ESC)
      CancelTransfer = 67108864, -- (ESC)
      LoadingSpinner = 134217728,
      NoReturnToGTA = 268435456, -- (ESC)
      CancelEsc = 536870912, -- (ESC)
}

Alt = {
      Empty = 0,
      No = 1, -- (SPACE)
      Host = 2, -- (ESC)
      SearchForJob = 4, -- (RETURN)
      ReturnKey = 8, -- (TURN)
      Freemode = 16, -- (ESC)
}
```

**Result of the example code:** [https://i.imgur.com/TvmNF4k.png](https://i.imgur.com/TvmNF4k.png)

## Parameters
* **labelTitle**: Label of the alert's title. 
* **labelMsg**: Label of the alert's message.
* **p2**: This is an enum, check the description for a list.
* **p3**: This is an enum, check the description for a list.
* **labelMsg2**: Label of another message line
* **p5**: usually 0
* **p6**: usually -1
* **p7**: usually 0
* **p8**: unknown label
* **p9**: unknown label
* **background**: Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.
* **errorCode**: Error code, shown at the bottom left if set to value other than 0.

## Examples
```lua
Citizen.CreateThread(function()
	AddTextEntry("FACES_WARNH2", "Nice title")
	AddTextEntry("QM_NO_0", "Cool message")
	AddTextEntry("QM_NO_3", "Cool message 2")
	while true do
		Citizen.Wait(0)
		DrawFrontendAlert("FACES_WARNH2", "QM_NO_0", 3, 3, "QM_NO_3", 2, -1, false, "FM_NXT_RAC", "QM_NO_1", true, 10)
	end
end)
```
