# livecoding snippets

## requirements

- [hundredrabbits/Orca](https://github.com/hundredrabbits/Orca)
- [hundredrabbits/Pilot](https://github.com/hundredrabbits/Pilot)
- [samaaron/sonic-pi](https://github.com/samaaron/sonic-pi) (optional)
- [pure\-data/pure\-data](https://github.com/pure-data/pure-data) (optional)
- [processing/processing](https://github.com/processing/processing) (optional)



## record with Pilot and convert sound

1. record with Pilot
1. save .opus file
1. convert with ffmpeg (or something)

```
$ ffmpeg -i out.opus -f mp3 out.mp3
```
