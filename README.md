## Base image for lightweight java container with alpine linux and openjdk 13

### Warning

 The Alpine JDK port is an unsupported release, which is why there are only early access builds.
 It will work as long as early access version for JDK 13 exists on oracle page.

### Build
```
docker build -t {image tag} .
```

### Run
Run interactive (`-i`) to use jshell:
```
docker run -it {image tag}
```