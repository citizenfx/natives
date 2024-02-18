---
ns: AUDIO
---
## GET_SOUND_ID

```c
// 0x430386FE9BF80B45 0x6AE0AD56
int GET_SOUND_ID();
```


If a playback function has a soundId field but the sound doesn't need to be altered after triggering then pass a value of -1 for fire-and-forget playback, rather than getting a soundId.

SoundId's can be reused, without needing to release them and grab a new one.

If a sound's finished playing, you can reuse its SoundId to kick off another one.

If the sound's not finished playing, it'll be stopped first (fading out or whatever is set up in RAVE by the sound designer), and the new one kicked off; usually it is safer to just get a new SoundId.

SoundId's are not automatically cleaned up, you must use [RELEASE_SOUND_ID](#_0x353FC880830B88FA) after you've finished using them to allow the engine to recycle the sound id.

## Return value
Returns a sound id which can be used to control the sound after its has started playing.
