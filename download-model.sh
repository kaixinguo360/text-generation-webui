#!/bin/sh

cd $(dirname $0)

cmd.exe /C proxy.cmd python download-model.py "$@"
