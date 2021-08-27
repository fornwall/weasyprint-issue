#!/bin/sh

for VERSION in 53.0 53.1 53.2; do
    docker build --build-arg WEASYPRINT_VERSION=$VERSION -t weasyprint-generator-$VERSION .
    docker run -v $PWD:/shared weasyprint-generator-$VERSION
done
