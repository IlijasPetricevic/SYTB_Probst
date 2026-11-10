#!/bin/bash

heute=$(date +%Y-%m-%d)

datei=$1

neuer_name="${heute}_${datei}"

cp "$datei" "$neuer_name"