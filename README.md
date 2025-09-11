## Project Resumed
Only one DNS plugins is still broken and no any progress.

Tracker:
- https://github.com/caddy-dns/route53/issues/59

## xrosswall
[![xrosswall](https://snapcraft.io/xrosswall/badge.svg)](https://snapcraft.io/xrosswall)

A simple solution, combining [caddy](https://github.com/caddyserver/caddy) and [v2ray](https://github.com/v2fly/v2ray-core/), for anti-censorship.


[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/xrosswall)


## Requirements

- [Snap installed](https://snapcraft.io/docs/installing-snapd)
- A server or vps with 80 and 443 port open (only 443 port required if use DNS Challenge)
- A public domain name with correct A or AAAA record

## Benefits of using "Snap"
- Easy to use
- Always up to date
- Low maintenance

Thanks to snap's automatic update feature, users consistently have access to the latest caddy & v2ray version without the need for frequent manual updates from the server.This ensuring users have access to the latest features and bug fixes.

## Stack diagram
The default stack is tls + vmess + ws，you can change it on your own. See `config file location` below.
```text
    +----------------------+
    |        Client        |
    +----------------------+
              |
              | HTTPS
              |
    +----------------------+
    |        Caddy         |
    |   (Reverse Proxy)    |
    +----------------------+
              |
              | Vmess/WebSocket
              |
    +----------------------+
    |        V2Ray         |
    |   (Proxy Server)     |
    +----------------------+
              |
              | Internet
```

## Install

```bash
$ sudo snap install xrosswall
```

## Start to use

```bash
$ sudo xrosswall init
```

## Help

```bash
$ xrosswall --help
```

## How to manage Service ?
When you have made changes to the configuration file, you need to manually restart the service.
```bash
# show service status
$ sudo snap services xrosswall

# start/stop/restart all services
$ sudo snap start/stop/restart xrosswall

# or manipulate single service
$ sudo snap start/stop/restart xrosswall.caddy
```

## How to check Service logs ?
```bash
$ sudo snap logs xorsswall.caddy
```

## config file location
- `$SNAP_DATA`->`/var/snap/xrosswall/current`
  - Caddyfile
  - config.json

## Caddy modules
- All Standard modules
- extra DNS modules
  - [Azure](https://github.com/caddy-dns/azure)
  - [Cloudflare](https://github.com/caddy-dns/cloudflare)
  - [Duckdns](https://github.com/caddy-dns/duckdns)
  - [Godaddy](https://github.com/caddy-dns/godaddy)
  - [Linode](https://github.com/caddy-dns/linode)
  - [Namecheap](https://github.com/caddy-dns/namecheap)
  - [Route53](https://github.com/caddy-dns/route53)
  - [Vultr](https://github.com/caddy-dns/vultr)

