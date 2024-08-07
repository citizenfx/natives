---
ns: TASK
---
## ADD_PATROL_ROUTE_LINK

```c
// 0x23083260DEC3A551 0xD8761BB3
void ADD_PATROL_ROUTE_LINK(int id1, int id2);
```

connects/links 2 [route nodes](#_0x8EDF950167586B7C)  
image representing the cyclic example below:  
![image](https://user-images.githubusercontent.com/55803068/188470866-c32c6a9f-a25d-4772-9b18-5be46e2c14a1.png)

## Parameters
* **id1**: the id representing the first route node
* **id2**: the id representing the second route node

## Examples

```lua
-- these lines connect 1,2,3,4,5,6 in a cyclic manner (1 > 2 > 3 > 4 > 5 > 6 > 1)


AddPatrolRouteLink(1,2)
AddPatrolRouteLink(2,3)
AddPatrolRouteLink(3,4)
AddPatrolRouteLink(4,5)
AddPatrolRouteLink(5,6)
AddPatrolRouteLink(6,1)
```
