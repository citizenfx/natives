---
ns: HUD
aliases: ["0xDD564BDD0472C936", "_ADD_FRONTEND_MENU_CONTEXT"]
---
## PAUSE_MENU_ACTIVATE_CONTEXT

```c
// 0xDD564BDD0472C936 0x9FE8FD5E
void PAUSE_MENU_ACTIVATE_CONTEXT(Hash hash);
```

Activates the specified frontend menu context.

pausemenu.xml defines some specific menu options using 'context'. Context is basically a 'condition'. 

The `*ALL*` part of the context means that whatever is being defined, will be active when any or all of those conditions after `*ALL*` are met.

The `*NONE*` part of the context section means that whatever is being defined, will NOT be active if any or all of the conditions after `*NONE*` are met.

This basically allows you to hide certain menu sections, or things like instructional buttons.

See the old description below for more info.


----------------------


> Seems to add/set the current menu context (to show/hide buttons?)
> Pausemenu.xml:
> `<Contexts>*ALL*, DISPLAY_CORONA_BUTTONS, *NONE*, BET_LOCKED, BET_AVAILABLE, SCROLL_OPTION</Contexts>`
> Code:
>  ```
>  if (...) {
>      sub_bbd34(a_0, 0, "FM_BET_HELP");
>      UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_available}); // This native
>      UI::OBJECT_DECAL_TOGGLE(${bet_locked});
>  } else {
>      sub_bbd34(a_0, 0, "");
>      UI::OBJECT_DECAL_TOGGLE(${bet_available});
>      UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_locked}); // This native
>  }
>  ```
> OBJECT_DECAL_TOGGLE seems to remove a context, It also has a hash collision
> // Old
> Scripts do not make this native's purpose clear. However, this native most likely has something to do with decals since in nearly every instance, "OBJECT_DECAL_TOGGLE" is called prior.


## Parameters
* **hash**: Context name hash.

