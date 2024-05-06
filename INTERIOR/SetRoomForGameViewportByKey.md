---
ns: INTERIOR
aliases: ["_0x405DC2AEF6AF95B9"]
---
## SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY

```c
// 0x405DC2AEF6AF95B9 0x0E9529CC
void SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY(Hash roomHashKey);
```

Associates the game viewport with the specified interior room to ensure that it renders correctly after a camera cut or warp.

```
NativeDB Introduced: v323
```


## Parameters
* **roomHashKey**: The hash key of the interior room to associate with the game viewport (defined in a CMloRoomDef).

## Examples
```lua
-- Usage
local roomId = GetKeyForEntityInRoom(PlayerPedId())
SetRoomForGameViewportByKey(roomId)
```
```javascript
// Usage
const roomId = GetKeyForEntityInRoom(PlayerPedId());
SetRoomForGameViewportByKey(roomId);
```
```csharp
using static CitizenFX.Core.Native.API;
// Usage
Hash roomId = GetKeyForEntityInRoom(PlayerPedId());
SetRoomForGameViewportByKey(roomId);
```