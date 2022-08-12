yum -y install epel-release &&
    yum -y groupinstall "Development Tools" &&
    yum config-manager --set-enabled powertools &&
    yum -y install bison \
        ncurses-devel \
        readline-devel \
        perl-devel \
        openssl-devel \
        libxml2-devel \
        gperf \
        libaio-devel \
        libevent-devel \
        tree \
        wget \
        pam-devel \
        snappy-devel \
        libicu \
        vim \
        wget \
        strace \
        ltrace \
        gdb \
        rsyslog \
        net-tools \
        openssh-server \
        expect \
        boost \
        perl-DBI \
        libicu \
        boost-devel \
        initscripts \
        jemalloc-devel \
        libcurl-devel \
        gtest-devel \
        cppunit-devel \
        systemd-devel \
        lzo-devel \
        xz-devel \
        lz4-devel \
        bzip2-devel \
        cmake \
        checkpolicy \
        gcc-toolset-11 
