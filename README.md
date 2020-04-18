# ORCΛ snippets

## requirements

- [hundredrabbits/Orca](https://github.com/hundredrabbits/Orca)
- [hundredrabbits/Pilot](https://github.com/hundredrabbits/Pilot)
- [samaaron/sonic-pi](https://github.com/samaaron/sonic-pi) (optional)



## record and convert sound

1. record with Pilot
1. save .opus file
1. convert with ffmpeg (or something)

```
$ ffmpeg -i out.opus -f mp3 out.mp3
```