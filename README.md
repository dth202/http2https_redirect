# Linux password hash generator

A simple nginx container that will redirect http to https 



## Simple usage
```
docker run -d -p '80:80' dth202/http2https_redirect
```

## Advanced Usage
```
docker run \
  --name https_redirect \
  -d \
  -v nginx_conf:/etc/nginx/conf.d \
  -p '80:80'
  --restart unless-stopped \
  dth202/http2https_redirect
```

## Docker-Compose
```
version: "3"

services:
  http2https_redirect:
    image: dth202/http2https_redirect
    restart: unless-stopped
    ports:
      - '80:80'
```

## Volume

The volume is not necessary unless you want to modify the server entry with manual configs.

## License

This is free to use/distribute. However feel free to contribute if you feel like there is more functionality you would like to implement.

## Changelog

2022/07/00 - Created Repo

