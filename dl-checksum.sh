#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/kubernetes-sigs/bom/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local dotexe=${4:-}
    local platform="${arch}-${os}"
    # https://github.com/kubernetes-sigs/bom/releases/download/v0.5.1/bom-arm64-linux
    local url=$MIRROR/v$ver/bom-${platform}${dotexe}
    local lfile=$DIR/bom-${ver}-${platform}${dotexe}

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dlver () {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver darwin arm64
    dl $ver linux amd64
    dl $ver linux arm64
}

dlver ${1:-0.5.1}
