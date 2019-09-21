---
ns: CFX
apiset: client
---
## SEND_NUI_MESSAGE

```c
BOOL SEND_NUI_MESSAGE(char* jsonString);
```

```
There are 2 "forms" of this native, SendNuiMessage & SendNUIMessage.

SendNuiMessage is the actual native that requires a JSON string that can be used like so: SendNuiMessage(json.encode({example = "example"}))

SendNUIMessage is an alias that takes an array/table which then serializes it to a JSON string and calls the native after. This means json.encode is not required.
```


## Parameters
* **jsonString**: 

## Return value
