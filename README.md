# UltraVNC Repeater (Docker image)

This is a docker image for the Linux port of UltraVNC. It is based on work done in/by
- Jari Korhonen
- http://forum.ultravnc.info/viewtopic.php?p=80701
- https://github.com/qian-jiahong/uvncrep017-ws
- https://github.com/rssun/uvncrep017-ws

## Building the image

This docker image is currently not hosted anywhere so you'll need to build it. Run
```shell
docker build -t ultravnc-repeater:0.17.1 .
```

## Running the container
Using the standard TCP ports, run
```shell
docker run -ti -p 5901:5901 -p 5500:5500 ultravnc-repeater:0.17.1
```

Logs are sent to stdout so use Docker's logging facilities to access them.
