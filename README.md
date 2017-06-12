# About

Dockerfile to build a debian:jessie baseimage with a couple of extra packages.

The image is built on top of the `debian:jessie` image and installs the following extra packages:

- `vim.tiny`
- `wget`
- `sudo`
- `net-tools`
- `ca-certificates`
- `unzip`
- `ngrep`
- `sipsak`

The packages are selected based on the criteria that they are commonly used and that they do not influence the size of the resulting image too much.
Additionally `apt` is configured to **NOT** install `recommended` and `suggested` packages.
