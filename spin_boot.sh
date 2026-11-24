#!/usr/bin/env bash
set -e
TAG="eager-anchor-crimson-comet"
LIB="polished-smoke.a"
URL="https://github.com/juniariwave/replicatedlatticekit/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
