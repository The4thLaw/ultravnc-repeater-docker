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
docker run -ti -p 5901:5901 -p 5500:5500 --restart always ultravnc-repeater:0.17.1
```

Logs are sent to stdout so use Docker's logging facilities to access them.

## Connecting to the repeater
### As a server

The default server port is port 5500. In the _Network_ tab, click _START_ and enter:
- <your_host>:5500
- ID:<any_numeric_id>

Also check the official documentation at https://uvnc.com/docs/ultravnc-repeater.html .

### As a client (official UltraVNC client)

Select the _Repeater_ radio, enter
- ID:<the_same_id_as_the_server>
- <your_host>:5901

Also check the official documentation at https://uvnc.com/docs/ultravnc-repeater.html .

### As a client (SSVNC client)

Run
```shell
ssvncviewer -repeater ID:<the_same_id_as_the_server> <your_host>:5901
```

## Future

There are no plans for significant evolutions of this project. I needed something that worked in an isolated and reliable manner. I also have limited knowledge of C++ so 
- Issues without a pull request are unlikely to be resolved by me
- Issues with a complex pull request are unlikely to be merged as I'm too rusty to ensure the new code does not introduce a security issue
