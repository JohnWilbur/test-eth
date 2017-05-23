FROM ubuntu:xenial

RUN apt-get -y update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ethereum/ethereum && \
    apt-get update && \
    apt-get install -y \
	build-essential \
	cmake \
	ethereum \
	git \
	libboost-all-dev \
	libcurl4-gnutls-dev \
	libcryptopp-dev \
	libgmp-dev \
	libjsoncpp-dev \
	libjsonrpccpp-dev \
	libleveldb-dev \
	libmicrohttpd-dev \
	libreadline-dev \
	libssl-dev \
	mesa-common-dev \
	ocl-icd-libopencl1 \
	opencl-headers \
	wget && \
	mkdir /src && \
	cd /src && \
	git clone https://github.com/CrowBits/cpp-ethereum.git && \
	cd cpp-ethereum && \
	cmake -DBUNDLE=miner && \
	make -j && \
	make install && \
	cd / && \
	rm -fR /src && \
	ldconfig


# Run with --help by default, force user to provide proper arguments.
ENTRYPOINT ["/usr/local/bin/ethminer"]
CMD ["--help"]
