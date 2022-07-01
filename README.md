# Redirect http requests to https

A simple nginx container that will redirect http to https without any manual setup. This container uses the official nginx image with the following server block

```
server {
  listen 80;
  return 301 https://$server_name$request_uri;
}
```
Any traffic you pass through to this container will force the client to resubmit with https. This makes enforcing https in your stack in situations where the stack doesn't natively support it. Like with the zabbix server stack.


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

## Github Repo
[https://github.com/dth202/http2https_redirect](https://github.com/dth202/http2https_redirect)

## Changelog

2022/07/00 - Created Repo

