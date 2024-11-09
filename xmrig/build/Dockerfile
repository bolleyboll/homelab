FROM alpine:3.20.3 as builder

ENV LC_ALL C.UTF-8

ARG XMRIG_VERSION=6.22.2

RUN apk --no-cache update
RUN apk --no-cache upgrade

RUN apk --no-cache add \
		git \
		make \
		cmake \
		libstdc++ \
		gcc \
		g++ \
		automake \
		libtool \
		autoconf \
		linux-headers

RUN mkdir -p /opt/xmrig /etc/xmrig
ADD https://github.com/xmrig/xmrig/archive/refs/tags/v${XMRIG_VERSION}.tar.gz /opt/xmrig

RUN cd /opt/xmrig && \
	tar -xvf v${XMRIG_VERSION}.tar.gz

COPY code/donate.h /opt/xmrig/xmrig-${XMRIG_VERSION}/src/donate.h

RUN cd /opt/xmrig/xmrig-${XMRIG_VERSION}/ && \
	mkdir build && \
	cd scripts && ./build_deps.sh && \
	cd ../build && \
	cmake .. -DXMRIG_DEPS=scripts/deps -DBUILD_STATIC=ON && \
	make -j$(nproc)

FROM alpine:3.20.3

ENV LC_ALL C.UTF-8

RUN apk --no-cache update

RUN apk --no-cache add \
		libstdc++ \
		ca-certificates \
		openssl \
		curl \
		jq \
		bash

COPY --from=builder /opt/xmrig/xmrig-${XMRIG_VERSION}/build/xmrig /usr/local/bin/xmrig

COPY config/config.json /etc/xmrig/config.json

RUN chmod +x /usr/local/bin/xmrig

CMD ["/usr/local/bin/xmrig", "--config=/etc/xmrig/config.json"]
