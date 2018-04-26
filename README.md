# drone-config-plugin

drone-config-plugin import configuration to the Drone server.

## Usage

drone.yml

```yaml
  import-config:
    image: uphy/drone-config
    file: config.yml
    server: localhost:8000
    token: 0123456789ABCDEF
```

config.yml

```yaml
owners:
  user1:
    secrets:
      http_proxy: "http://hoge.com"
      https_proxy: "http://hoge.com"
repos:
  user1/test:
    secrets:
      aaaa: AAAA
    settings:
      protected: false
      trusted: true
    hooks:
      push: true
      pullrequest: true
      tag: true
      deployment: false
    timeout: 60
```

See [drone-util](https://github.com/uphy/drone-util) for more details about `config.yml`.