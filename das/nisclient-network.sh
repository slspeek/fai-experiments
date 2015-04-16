#!/bin/bash
NUMBER=${1:-1}

cat > /etc/network/interfaces <<EOF
# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
allow-hotplug eth0
iface eth0 inet static
	address 10.0.10.10${NUMBER}
	netmask 255.255.255.0
	network 10.0.10.0
	broadcast 10.0.30.255
	gateway 10.0.10.2
	# dns-* options are implemented by the resolvconf package, if installed
	dns-nameservers 8.8.8.8
EOF
