#!/bin/bash

mkdir -p extracted/lib extracted/bin

cp ethminer/ethminer extracted/bin

for i in `ldd ethminer/ethminer | grep "=>" | grep -v "not found" | awk '{print $3}'`;do
	cp $i extracted/lib
done
