---
ns: INTERIOR
aliases: ["_0xAF348AFCB575A441"]
---
## SET_ROOM_FOR_GAME_VIEWPORT_BY_NAME

```c
// 0xAF348AFCB575A441 0x1F6B4B13
void SET_ROOM_FOR_GAME_VIEWPORT_BY_NAME(char* roomName);
```

Same native as [`SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY`](#_0x405DC2AEF6AF95B9) but instead of using the hash of the interior, here we are using the name of the interior room.

```
NativeDB Introduced: v323
```

## Parameters
* **roomName**: The room name the interior room to associate with the game viewport.

## Examples
```lua
-- Usage
SetRoomForGameViewportByName("V_CarModRoom")
```
```javascript
// Usage
SetRoomForGameViewportByName("V_CarModRoom");
```
```csharp
using static CitizenFX.Core.Native.API;
// Usage
SetRoomForGameViewportByName("V_CarModRoom");
```