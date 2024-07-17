#!/bin/bash

ncc build index.js -m -o dist
node --experimental-sea-config sea-config.json
cp $(command -v node) noname-server

npx postject noname-server NODE_SEA_BLOB index.blob \
    --sentinel-fuse NODE_SEA_FUSE_fce680ab2cc467b6e072b8b5df1996b2 \
    --macho-segment-name NODE_SEA
