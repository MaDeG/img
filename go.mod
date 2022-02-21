module github.com/genuinetools/img

go 1.13

replace github.com/hashicorp/go-immutable-radix => github.com/tonistiigi/go-immutable-radix v0.0.0-20170803185627-826af9ccf0fe

replace github.com/jaguilar/vt100 => github.com/tonistiigi/vt100 v0.0.0-20190402012908-ad4c4a574305

require (
	github.com/AkihiroSuda/containerd-fuse-overlayfs v1.0.0
	github.com/containerd/console v0.0.0-20191219165238-8375c3424e4d
	github.com/containerd/containerd v1.4.0
	github.com/containerd/go-runc v0.0.0-20200220073739-7016d3ce2328
	github.com/cyphar/filepath-securejoin v0.2.2
	github.com/docker/cli v0.0.0-20200227165822-2298e6a3fe24
	github.com/docker/distribution v2.7.1-0.20190205005809-0d3efadf0154+incompatible
	github.com/docker/docker v17.12.0-ce-rc1.0.20200309214505-aa6a9891b09c+incompatible
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/go-units v0.4.0
	github.com/genuinetools/reg v0.16.0
	github.com/jteeuwen/go-bindata v3.0.7+incompatible // indirect
	github.com/mitchellh/hashstructure v1.0.0 // indirect
	github.com/moby/buildkit v0.7.2
	github.com/moby/moby v17.12.0-ce-rc1.0.20200227233006-38f52c9fec82+incompatible // indirect
	github.com/opencontainers/image-spec v1.0.1
	github.com/opencontainers/runc v1.0.0-rc9.0.20200221051241-688cf6d43cc4
	github.com/opentracing-contrib/go-stdlib v0.0.0-20180702182724-07a764486eb1 // indirect
	github.com/opentracing/opentracing-go v1.0.2 // indirect
	github.com/pkg/errors v0.9.1
	github.com/prometheus/procfs v0.0.5 // indirect
	github.com/rootless-containers/rootlesskit v0.14.6
	github.com/sirupsen/logrus v1.8.1
	github.com/spf13/cobra v0.0.5
	go.etcd.io/bbolt v1.3.5
	golang.org/x/lint v0.0.0-20210508222113-6edffad5e616 // indirect
	golang.org/x/net v0.0.0-20211105192438-b53810dc28af // indirect
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45 // indirect
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	golang.org/x/tools v0.1.9 // indirect
	google.golang.org/grpc v1.27.1
)

replace github.com/containerd/containerd => github.com/containerd/containerd v1.3.1-0.20200227195959-4d242818bf55

replace github.com/docker/docker => github.com/docker/docker v1.4.2-0.20200227233006-38f52c9fec82
