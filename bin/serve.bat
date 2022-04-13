#!/usr/bin/env bash

echo " "
echo "===================robles==================="
echo " Starting local dev server..."
echo " "
echo " Preview will be accessible at:"
echo "   http://localhost:4567/"
echo " Use ctrl + c to exit"
echo "============================================"
echo " "

docker pull razeware/robles:release-v2
docker run --rm -v "%cd%:/data/src" -p 127.0.0.1:4567:4567 -p 127.0.0.1:35729:35729 razeware/robles:release-v2 bin/robles book serve
