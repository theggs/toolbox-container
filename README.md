A container image to provide an container env as utility tool when do some job in container environment, like k8s.
The production images usually only contain what they need to run. They have few cmd tools inside. This container would be very useful dueing some complex issues, like k8s network issue, k8s environment issue, etc.

THe software contained:
- curl
- bash
- tar
- netcat
- software being in busybox-extras (https://git.alpinelinux.org/aports/tree/main/busybox?h=master)
- etcd
- etcdctl

