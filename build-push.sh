#!/bin/bash

docker build -t ghcr.io/brandtkeller/image/personal-blog:latest .

docker push ghcr.io/brandtkeller/image/personal-blog:latest