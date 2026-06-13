# komodo-periphery-fnox

[![CI](https://github.com/NiekKeijzer/komodo-periphery-fnox/actions/workflows/build.yml/badge.svg)](https://github.com/NiekKeijzer/komodo-periphery-fnox/actions)

A [Komodo](https://github.com/moghtech/komodo) Periphery image with [fnox](https://github.com/jdx/fnox) preinstalled, published to GHCR and rebuilt automatically when the base image or fnox release changes.

## Image

```bash
docker pull ghcr.io/niekkeijzer/komodo-periphery-fnox:2
```

Published tags: `<major>`, `<major.minor>`, `<major.minor.patch>`, matching the upstream `komodo-periphery` release used as the base.

## Usage

```yaml
services:
  periphery:
    image: ghcr.io/niekkeijzer/komodo-periphery-fnox:2
```

`fnox` is available on `PATH` (`fnox --version`). See the [fnox docs](https://fnox.jdx.dev/).

## Building locally

```bash
docker build \
  --build-arg KOMODO_PERIPHERY_VERSION=2.0.0 \
  --build-arg FNOX_VERSION=1.26.0 \
  -t komodo-periphery-fnox .
```

## Credits

Based on [smoochy/komodo-periphery-sops-age](https://github.com/smoochy/komodo-periphery-sops-age), adapted to install [fnox](https://github.com/jdx/fnox) instead of SOPS/age.

## AI disclaimer

The Dockerfile, workflow, and this README were drafted with AI assistance (Claude) and reviewed before publishing.

## License

[MIT](./LICENSE)
