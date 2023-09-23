# ColumnStore Dev Docker

## Contents

- Dockerfile
- vim config
- scripts for start service and install dependencies

## Setup

```shell
docker build -t columnstore-dev:rockylinux-8 .
git clone https://github.com/MariaDB/server.git --recurse-submodules --depth=1
cd /path/to/server
git config "submodule.storage/columnstore/columnstore.update" "none"
docker run --privileged -d --name='cs-dev' \
  -v path/to/server:/root/server \
  columnstore-dev:rockylinux-8 /usr/sbin/init
docker exec -it -w /root/server/storage/columnstore/columnstore/build cs-dev /bin/bash
git checkout develop
. /opt/rh/gcc-toolset-12/enable && ./bootstrap_mcs.sh
```

## issues

```shell
# reinstall mysql data
rm -rf /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql
mysql_install_db --user=mysql
# remove unused plugins
rm -rf /etc/my.cnf.d/auth_gssapi.cnf
rm -rf /etc/my.cnf.d/provider_*
```
