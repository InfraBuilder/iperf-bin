
IPERF_VERSION=3.16

# Install iperf3
apt update && apt install wget build-essential -y

wget https://downloads.es.net/pub/iperf/iperf-${IPERF_VERSION}.tar.gz
tar -xvf iperf-${IPERF_VERSION}.tar.gz
cd iperf-${IPERF_VERSION}
./configure --enable-static-bin --disable-shared
make
make install
ldconfig

echo /usr/local/bin/iperf3