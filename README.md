# network tool container

A container which has some tools install to debug your kubernetes and openshift network issues.


## example config

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: network-tools
  labels:
    app: network-tools
spec:
  replicas: 1
  selector:
    matchLabels:
      app: network-tools
  template:
    metadata:
      labels:
        app: network-tools
    spec:
      containers:
      - name: network-tools
        image: palo/network-tools:latest
        args: [ "ping", "-c 10", "google.com" ]
```


