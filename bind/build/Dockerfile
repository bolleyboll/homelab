FROM alpine:latest AS base

ENV LC_ALL=C.UTF-8

ARG UID=53
ARG GID=53

ARG BIND9_VERSION=9.18.38
ARG BIND9_CHECKSUM=b11fce934773ec25dd6d7253caeaf9c5bbf073fd327acc29daffeca3987e31a1

RUN apk --no-cache update
RUN apk --no-cache upgrade

FROM base AS builder

RUN apk --no-cache add \
		autoconf \
		automake \
		build-base \
		fstrm \
		fstrm-dev \
		jemalloc \
		jemalloc-dev \
		json-c \
		json-c-dev \
		krb5-dev \
		krb5-libs \
		libcap-dev \
		libcap2 \
		libidn2 \
		libidn2-dev \
		libmaxminddb-dev \
		libmaxminddb-libs \
		libtool \
		libuv \
		libuv-dbg \
		libuv-dev \
		libxml2 \
		libxml2-dbg \
		libxml2-dev \
		libxslt \
		lmdb \
		lmdb-dev \
		make \
		musl-dbg \
		nghttp2-dev \
		nghttp2-libs \
		openssl-dbg \
		openssl-dev \
		procps \
		protobuf-c \
		protobuf-c-dev \
		tzdata

RUN mkdir -p /usr/src
ADD https://downloads.isc.org/isc/bind9/${BIND9_VERSION}/bind-${BIND9_VERSION}.tar.xz /usr/src
RUN cd /usr/src && \
	( echo "${BIND9_CHECKSUM}  bind-${BIND9_VERSION}.tar.xz" | sha256sum -c - ) && \
	tar -xJf bind-${BIND9_VERSION}.tar.xz && \
	cd /usr/src/bind-${BIND9_VERSION} && \
	./configure --prefix /usr \
				--sysconfdir=/etc/bind \
				--localstatedir=/ \
				--enable-shared \
				--disable-static \
				--with-gssapi \
				--with-libidn2 \
				--with-json-c \
				--with-lmdb=/usr \
				--with-gnu-ld \
				--with-maxminddb \
				--enable-dnstap && \
	make -j && \
	make install DESTDIR=/dist  && \
	rm -rf /usr/src

FROM base

RUN apk --no-cache add \
		fstrm \
		jemalloc \
		json-c \
		krb5-libs \
		libcap2 \
		libidn2 \
		libmaxminddb-libs \
		libuv \
		libxml2 \
		lmdb \
		nghttp2-libs \
		procps \
		protobuf-c \
		tzdata \
		bind-tools

# Copy binaries from previous stage
COPY --from=builder /dist/ /

# Create user and group
RUN addgroup -S -g ${GID} bind && adduser -S -u ${UID} -H -h /var/cache/bind -G bind bind

# Copy configuration files
COPY config /etc/bind/

# Create default configuration file
RUN mkdir -p /etc/bind && chown bind:bind /etc/bind/ && chmod 755 /etc/bind
RUN chown bind:bind /etc/bind/named.conf && chmod 644 /etc/bind/named.conf

# Create working directory
RUN mkdir -p /var/cache/bind && chown bind:bind /var/cache/bind && chmod 755 /var/cache/bind

# Create directory to store secondary zones
RUN mkdir -p /var/lib/bind && chown bind:bind /var/lib/bind && chmod 755 /var/lib/bind

# Create log directory
RUN mkdir -p /var/log/bind && chown bind:bind /var/log/bind && chmod 755 /var/log/bind

# Create PID directory
RUN mkdir -p /run/named && chown bind:bind /run/named && chmod 755 /run/named

VOLUME ["/etc/bind", "/var/cache/bind", "/var/lib/bind", "/var/log"]

EXPOSE 53/udp 53/tcp 953/tcp 853/tcp 443/tcp 8053/tcp

HEALTHCHECK CMD dig +norecurse +short +retry=0 @127.0.0.1 pi5.lan || exit 1

ENTRYPOINT ["/usr/sbin/named", "-u", "bind"]
CMD ["-f", "-d", "3", "-c", "/etc/bind/named.conf", "-L", "/var/log/bind/default.log"]
