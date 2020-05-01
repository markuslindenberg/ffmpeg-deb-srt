# Debian / Ubuntu ffmpeg packages with SRT support

Currently both Ubuntu and Debian distributions are missing [SRT (Secure Reliable Transport)](https://github.com/Haivision/srt) support in [ffmpeg](https://ffmpeg.org/) packages.

This repository contains Github actions that automatically rebuild the
distribution ffmpeg Packages with libsrt support enabled.

## Supported Distributions

- Debian GNU/Linux 10 (buster)
- Ubuntu 20.04 LTS (Focal Fossa)

## Installation

The PPAs are currently uploaded to a Digitalocean space that can be used as APT package source.

### Add the repository signing key

```bash
curl -L https://github.com/markuslindenberg/ffmpeg-deb-srt/raw/master/pubkey.gpg | sudo apt-key add -
```

### Add APT repository

Add the repository to /etc/apt/sources.list or create a .list file in /etc/apt/sources.list.d.

#### Debian 10

```bash
echo "deb https://ffmpeg-deb-srt.fra1.cdn.digitaloceanspaces.com/buster buster main" | sudo tee /etc/apt/sources.list.d/ffmpeg-srt.list
```

#### Ubuntu 20.04 LTS

```bash
echo "deb https://ffmpeg-deb-srt.fra1.cdn.digitaloceanspaces.com/focal focal main" | sudo tee /etc/apt/sources.list.d/ffmpeg-srt.list
```
