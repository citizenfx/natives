---
ns: PED
---
## GET_RELATIONSHIP_BETWEEN_GROUPS

```c
// 0x9E6B70061662AE5C 0x4E372FE2
int GET_RELATIONSHIP_BETWEEN_GROUPS(Hash group1, Hash group2);
```

```
Gets the relationship between two groups. This should be called twice (once for each group).  
Relationship types:  
0 = Companion  
1 = Respect  
2 = Like  
3 = Neutral  
4 = Dislike  
5 = Hate  
255 = Pedestrians  
Example:  
PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C);  
PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);  
```

## Parameters
* **group1**: 
* **group2**: 

## Return value
