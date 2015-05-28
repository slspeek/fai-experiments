wget -c http://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2014.2_all.deb

VERSION=1.4.2
ARCH=386
wget -c https://storage.googleapis.com/golang/go${VERSION}.linux-${ARCH}.tar.gz

ARCH=amd64
wget -c https://storage.googleapis.com/golang/go${VERSION}.linux-${ARCH}.tar.gz


VERSION=0.3.7.2

ARCH=Linux32
ARCHIVE=Popcorn-Time-${VERSION}-${ARCH}.tar.xz
URLBASE=https://get.popcorntime.io/build/$ARCHIVE
wget -c $URLBASE

ARCH=Linux64
ARCHIVE=Popcorn-Time-${VERSION}-${ARCH}.tar.xz
URLBASE=https://get.popcorntime.io/build/$ARCHIVE
wget -c $URLBASE

