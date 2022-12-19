#!/bin/sh

NEEDED_PACKAGES=$(cat ./packages.list)

./scripts/feeds update
./scripts/feeds install ${NEEDED_PACKAGES}

cat cm4.config > .config
cat common.config >> .config
make defconfig

