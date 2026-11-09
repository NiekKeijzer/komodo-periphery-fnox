# komodo-periphery-fnox

[![CI](https://github.com/NiekKeijzer/komodo-periphery-fnox/actions/workflows/build.yml/badge.svg)](https://github.com/NiekKeijzer/komodo-periphery-fnox/actions)
[![AI:X I curate](https://img.shields.io/badge/-I%20curate-grey?style=for-the-badge&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMDAwIDEwMDAiIHdpZHRoPSIxMDAwIiBoZWlnaHQ9IjEwMDAiIGZpbGw9IndoaXRlIj4KICAgIDxjaXJjbGUgY3g9IjUwMCIgY3k9IjUwMCIgcj0iNDUyLjMiIGZpbGw9Im5vbmUiIHN0cm9rZT0id2hpdGUiIHN0cm9rZS13aWR0aD0iNDguNyIgLz4KICAgIDxwYXRoIGQ9Ik0yMzkuMSA0MTUuNkwyMTQuNTMgNTIzLjZMMjYzLjg1IDUyMy42TDIzOS4xIDQxNS42Wk0yMDcuMjkgMzY3Ljg4TDI3MS4xIDM2Ny44OEwzNDIuMzMgNjMxLjc4TDI5MC4xOSA2MzEuNzhMMjczLjkyIDU2Ni41NkwyMDQuMTEgNTY2LjU2TDE4OC4yIDYzMS43OEwxMzYuMDUgNjMxLjc4TDIwNy4yOSAzNjcuODhaTTM3Ny4wMSA0MTMuODRMMzc3LjAxIDM2Ny44OEw1MzQuMTQgMzY3Ljg4TDUzNC4xNCA0MTMuODRMNDgxLjY1IDQxMy44NEw0ODEuNjUgNTg1LjgzTDUzNC4xNCA1ODUuODNMNTM0LjE0IDYzMS43OEwzNzcuMDEgNjMxLjc4TDM3Ny4wMSA1ODUuODNMNDI5LjUgNTg1LjgzTDQyOS41IDQxMy44NEwzNzcuMDEgNDEzLjg0Wk01NjguODggNDA2LjA1TDYyNy43NCA0MDYuMDVMNjI3Ljc0IDQ3MC41N0w1NjguODggNDcwLjU3TDU2OC44OCA0MDYuMDVaTTU2OC44OCA1MjkuMDhMNjI3Ljc0IDUyOS4wOEw2MjcuNzQgNTkzLjk1TDU2OC44OCA1OTMuOTVMNTY4Ljg4IDUyOS4wOFpNODUzLjkgNjMxLjc4TDc5OS45OSA2MzEuNzhMNzQ5LjYyIDU0NC40Nkw2OTkuNDIgNjMxLjc4TDY0NS41MSA2MzEuNzhMNzIyLjkzIDQ5Ny44TDY0Ny42MyAzNjcuODhMNzAxLjU0IDM2Ny44OEw3NDkuNjIgNDUxLjg0TDc5Ny44NyAzNjcuODhMODUxLjc4IDM2Ny44OEw3NzYuODQgNDk3LjhMODUzLjkgNjMxLjc4WiIgLz4KPC9zdmc%2BCg%3D%3D&labelColor=13171f)](https://0rwx.com)

A [Komodo](https://github.com/moghtech/komodo) Periphery image with [fnox](https://github.com/jdx/fnox) preinstalled, published to GHCR. Both versions are pinned in the [Dockerfile](./Dockerfile) and kept up to date by [Renovate](https://docs.renovatebot.com/); every merged update rebuilds and publishes the image.

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
docker build -t komodo-periphery-fnox .
```

This uses the versions pinned in the Dockerfile. To try another fnox release, add `--build-arg FNOX_VERSION=<version>`.

## Credits

Based on [smoochy/komodo-periphery-sops-age](https://github.com/smoochy/komodo-periphery-sops-age), adapted to install [fnox](https://github.com/jdx/fnox) instead of SOPS/age.

## AI disclaimer

The Dockerfile, workflow, and this README were drafted with AI assistance (Claude) and reviewed before publishing.

## License

[MIT](./LICENSE)
