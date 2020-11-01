#!/bin/bash

echo "prueba"

type ./script.sh

$(sh script.sh)
L=$?
[ ! $L -eq 0 ] && exit 1
echo "Resultado correcto $L"

$(sh script.sh -l)
L=$?
[ ! $L -eq 1 ] && exit 1
echo "Resultado correcto $L"
