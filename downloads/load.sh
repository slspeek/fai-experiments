wget -c http://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring//deb-multimedia-keyring_2015.6.1_all.deb

VERSION=1.4.2
ARCH=386
wget -c https://storage.googleapis.com/golang/go${VERSION}.linux-${ARCH}.tar.gz

ARCH=amd64
wget -c https://storage.googleapis.com/golang/go${VERSION}.linux-${ARCH}.tar.gz


VERSION=0.3.8-0

ARCH=Linux-32
ARCHIVE=Popcorn-Time-${VERSION}-${ARCH}.tar.xz
URLBASE=https://get.popcorntime.io/build/$ARCHIVE
wget -c $URLBASE

ARCH=Linux-64
ARCHIVE=Popcorn-Time-${VERSION}-${ARCH}.tar.xz
URLBASE=https://get.popcorntime.io/build/$ARCHIVE
wget -c $URLBASE

wget -c https://download.jitsi.org/jitsi/debian/jitsi_2.8.5426-1_amd64.deb
wget -c https://download.jitsi.org/jitsi/debian/jitsi_2.8.5426-1_i386.deb

