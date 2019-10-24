# Sample: Hello World Buildpack

```
pack build hello -p /tmp/foo --buildpack $(pwd) --builder cloudfoundry/cnb:bionic --no-pull
```