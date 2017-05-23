#!/bin/bash

# -- Build Docker Image
docker build -t mycpp .
docker run -it -v /tmp/extract:/extract -t mycpp
