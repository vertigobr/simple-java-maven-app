#!/bin/bash
#
# Linha de comando "mvn" para quem não tem Java instalado.
# Quem tem Docker não tem medo.
# Usar imagem "maven" ou "vertigo/maven-ibmjava"
#
docker run --rm -ti \
  -v $(pwd):/opt/app \
  -w /opt/app \
  -e TERM=xterm \
  -v $HOME/.m2:/root/.m2 \
  maven:ibmjava mvn "$@"
