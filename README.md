A collection of scripts to make video streaming over
[RTMP](https://en.wikipedia.org/wiki/Real-Time_Messaging_Protocol) happen.

1. `nginx` does RTMP streaming to whoever subscribes.
2. One can stream into `nginx` with [OBS](https://obsproject.com/) or
   [ffmpeg](https://ffmpeg.org/).
3. Use `ffmpeg` to stream from CLI:
```bash
$ ffmpeg -re -i my_video.mkv \
	-preset:v ultrafast \
	-codec copy \
	-f flv \
	rtmp://localhost:20210/my_app/my_password
```
4. Then open VLC, File -> Open Network and enter
`rtmp://localhost:20210/my_app/my_password`

## References

1. https://github.com/arut/nginx-rtmp-module
2. https://mattjones.tech/2020/03/24/how-to-pause-and-resume-ffmpeg/
