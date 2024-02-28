---
ns: NETWORK
aliases: ["0x267C78C60E806B9A", "_NETWORK_ALLOW_LOCAL_ENTITY_ATTACHMENT"]
---
## NETWORK_ALLOW_REMOTE_ATTACHMENT_MODIFICATION

```c
// 0x267C78C60E806B9A 0xBB2D33D3
void NETWORK_ALLOW_REMOTE_ATTACHMENT_MODIFICATION(Entity entity, BOOL toggle);
```

Allows scripts to use attachment commands on entities (eg. [`ATTACH_ENTITY_TO_ENTITY`](#_0x6B9BBD38AB0796DF)) that are not controlled by the client.

**Note:** This is only local and does not affect entities on other machines. This is used by the ferris wheel script to sync players on carts.

## Parameters
* **entity**: Entity handle to allow remote attachment for.
* **toggle**: true/false.

