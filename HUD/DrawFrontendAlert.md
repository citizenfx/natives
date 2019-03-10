---
ns: HUD
aliases: ["_0x15803FEC3B9A872B"]
---
## _DRAW_FRONTEND_ALERT

```c
// 0x15803FEC3B9A872B
Any _DRAW_FRONTEND_ALERT(char* labelTitle, char* labelMsg, int p2, int p3, char* labelMsg2, int p5, int p6, int p7, char* p8, char p9, bool p10, Any p11);
```

## Parameters
* **labelTitle**: Label of the alert's title. 
* **labelMsg**: Label of the alert's message.
* **p2**: unknown int (impact bottom right buttons)
* **p3**: unknown int (impact bottom right buttons)
* **labelMsg2**: Label of another message line
* **p5**: usually 0
* **p6**: usually -1
* **p7**: usually 0
* **p8**: unknown label
* **p9**: unknown label
* **bool**: false hides the black background
* **p11**: unknown value default false, it shows an error code at the bottom left

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
[Result](https://i.imgur.com/TvmNF4k.png)