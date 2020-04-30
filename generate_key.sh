#!/bin/bash
set -e

export GNUPGHOME="$(mktemp -d)"
export KEYNAME="github.com/markuslindenberg/ffmpeg-deb/srt repository signing key"

gpg --batch --generate-key <<EOF
    Key-Type: RSA
    Key-Length: 4096
    Key-Usage: sign
    Name-Real: $KEYNAME
    %no-protection
EOF

gpg --export --armor --output pubkey.gpg
gpg --export-secret-keys --armor

rm -rf "$GNUPGHOME"
