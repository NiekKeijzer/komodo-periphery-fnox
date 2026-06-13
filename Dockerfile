# syntax=docker/dockerfile:1
ARG KOMODO_PERIPHERY_VERSION

FROM ghcr.io/moghtech/komodo-periphery:${KOMODO_PERIPHERY_VERSION:-latest}

USER root

RUN set -eux; \
	if command -v apk >/dev/null 2>&1; then \
	apk add --no-cache ca-certificates curl tar; \
	update-ca-certificates; \
	elif command -v apt-get >/dev/null 2>&1; then \
	apt-get update; \
	apt-get install -y --no-install-recommends ca-certificates curl tar; \
	rm -rf /var/lib/apt/lists/*; \
	update-ca-certificates || true; \
	fi

ARG TARGETARCH
ARG FNOX_VERSION
ARG BASE_DIGEST=""
ARG BASE_VERSION=""

RUN set -eux; \
	arch="${TARGETARCH:-amd64}"; \
	case "$arch" in \
	amd64) fnox_arch="x86_64-unknown-linux-gnu" ;; \
	arm64) fnox_arch="aarch64-unknown-linux-gnu" ;; \
	*) echo "Unsupported TARGETARCH: $arch"; exit 1 ;; \
	esac; \
	\
	curl -fsSL -o /tmp/fnox.tar.gz \
	"https://github.com/jdx/fnox/releases/download/v${FNOX_VERSION}/fnox-${fnox_arch}.tar.gz"; \
	tar -xzf /tmp/fnox.tar.gz -C /usr/local/bin fnox; \
	chmod +x /usr/local/bin/fnox; \
	rm -f /tmp/fnox.tar.gz; \
	\
	fnox --version

LABEL org.opencontainers.image.base.name="ghcr.io/moghtech/komodo-periphery"
LABEL org.opencontainers.image.base.version="${BASE_VERSION}"
LABEL org.opencontainers.image.base.digest="${BASE_DIGEST}"
LABEL org.opencontainers.image.fnox.version="${FNOX_VERSION}"
