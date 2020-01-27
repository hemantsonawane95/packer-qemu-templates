DEV_PACKAGES="
build-essential
curl
emacs24-nox
htop
nmon
slurm
tcpdump
unzip
"

ESSENTIAL_PACKAGES="
ntp
nfs-common
keepalived
haproxy
vim
byobu
"

if [[ $INSTALL_DEV_PACKAGES  =~ true || $INSTALL_DEV_PACKAGES =~ 1 ||
        $INSTALL_DEV_PACKAGES =~ yes ]]; then
 export DEBIAN_FRONTEND=noninteractive && apt-get -y install $DEV_PACKAGES
fi

export DEBIAN_FRONTEND=noninteractive && apt-get -y install $ESSENTIAL_PACKAGES
