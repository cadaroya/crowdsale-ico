#!/usr/bin/env bash

rm -rf flats/*
./node_modules/.bin/truffle-flattener
contracts/CarlosToken.sol > flats/CarlosToken_flat.sol