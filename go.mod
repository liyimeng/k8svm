module github.com/rancher/vm

//workaround for go module issue with downgrade the modules
exclude github.com/Sirupsen/logrus v1.4.2

exclude github.com/Sirupsen/logrus v1.4.1

exclude github.com/Sirupsen/logrus v1.4.0

exclude github.com/Sirupsen/logrus v1.3.0

exclude github.com/Sirupsen/logrus v1.2.0

exclude github.com/Sirupsen/logrus v1.1.1

exclude github.com/Sirupsen/logrus v1.1.0

go 1.12

require (
	github.com/Sirupsen/logrus v1.0.6
	github.com/ghodss/yaml v1.0.0 // indirect
	github.com/gogo/protobuf v1.2.1 // indirect
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef // indirect
	github.com/google/btree v1.0.0 // indirect
	github.com/google/gofuzz v1.0.0 // indirect
	github.com/googleapis/gnostic v0.3.0 // indirect
	github.com/gorilla/mux v1.7.2
	github.com/gorilla/websocket v1.4.0
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/hashicorp/golang-lru v0.5.1 // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/json-iterator/go v1.1.6 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pkg/errors v0.8.1
	github.com/spf13/pflag v1.0.3 // indirect
	golang.org/x/crypto v0.0.0-20190621222207-cc06ce4a13d4 // indirect
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45 // indirect
	golang.org/x/sys v0.0.0-20190621203818-d432491b9138 // indirect
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	k8s.io/api v0.0.0-20190325185214-7544f9db76f6
	k8s.io/apimachinery v0.0.0-20190223001710-c182ff3b9841
	k8s.io/client-go v8.0.0+incompatible
	k8s.io/kube-openapi v0.0.0-20190603182131-db7b694dc208 // indirect
	k8s.io/utils v0.0.0-20190607212802-c55fbcfc754a // indirect
)
