# debian-toolbox-custom

[![build-toolbox](https://github.com/bsherman/debian-toolbox-custom/actions/workflows/build.yml/badge.svg)](https://github.com/bsherman/debian-toolbox-custom/actions/workflows/build.yml)

Customized, daily updated, `debian-toolbox` image with a few extras for dev work.

## What is this?

These toolbox images are customized how I want, and avoid the need to install and upgrade debs after creating a distrobox.

Based on [debian-toolbox](https://github.com/toolbx-images/images/tree/main/debian/) of appropriate debian version.

## Verification

These images are signed with sigstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the appropriate command:

    cosign verify --key cosign.pub ghcr.io/bsherman/debian-toolbox-custom
