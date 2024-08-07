---
ns: NETWORK
---
## NETWORK_GET_NETWORK_ID_FROM_ENTITY

```c
// 0xA11700682F3AD45C 0x9E35DAB6
int NETWORK_GET_NETWORK_ID_FROM_ENTITY(Entity entity);
```
Get the network id of the given entity

An entity network id represents a given entity for other clients, it's a handle shared between clients, can be reconverted to a client entity handle.  
These (entity network IDs) can and will be reused, the network id will not change.
If you need to refer to an entity across machines (clients, or the server), you should use its network id.

Read more at [Network and local IDs](https://docs.fivem.net/docs/scripting-manual/networking/ids/)

## Parameters
* **entity**: the handle of the entity from which the network id should be taken

## Return value
The network id of the given entity

## Examples
```lua
local obj = CreateObject(`prop_weed_01`, vector3(0.0, 0.0, 0.0), true)
local netId = NetworkGetNetworkIdFromEntity(obj)
```

```js  
let [x, y, z] = GetEntityCoords(PlayerPedId());
let obj = CreateObject(GetHashKey('prop_weed_01'), x, y, z, true);
let netId = NetworkGetNetworkIdFromEntity(obj);
```

```cs  
var obj = CreateObject(GetHashKey('prop_weed_01'), new Vector3(0.0f, 0.0f, 0.0f), true);
var netId = NetworkGetNetworkIdFromEntity(obj);
```
