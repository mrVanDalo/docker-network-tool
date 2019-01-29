# network tool container

A container which has some tools install to debug your kubernetes and openshift network issues.


## example config

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: network-tool
  labels:
    app: network-tool
spec:
  replicas: 1
  selector:
    matchLabels:
      app: network-tool
  template:
    metadata:
      labels:
        app: network-tool
    spec:
      containers:
      - name: network-tool
        image: palo/network-tool:latest
        args: [ "ping", "-c 10", "google.com" ]
```


