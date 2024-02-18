---
ns: AUDIO
aliases: ["0xAA19F5572C38B564"]
---
## GET_VARIATION_CHOSEN_FOR_SCRIPTED_LINE

```c
// 0xAA19F5572C38B564 0xB58B8FF3
int GET_VARIATION_CHOSEN_FOR_SCRIPTED_LINE(cs_type(AnyPtr) char* textLabel);
```

## Parameters
* **textLabel**: all the text labels for filenames in `AmericanDialogueFiles.txt` appear to end with the letter 'A', it is the script's responsibility to add this 'A' before calling `GET_VARIATION_CHOSEN_FOR_SCRIPTED_LINE`.

## Return value
Returns the variation chosen for a given script speech line, or `0` if it hasn't been chosen yet.

Returns `-1` if there is no conversation active or if the active conversation doesn't contain this line or if the text label can't be found in the currently loaded text blocks

