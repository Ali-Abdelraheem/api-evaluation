#!/bin/sh
redis-server --daemonize yes
sleep 2
exec node dist/main
