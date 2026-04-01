#!/bin/sh

# 1. تشغيل Redis في الخلفية
echo "Starting Redis Server..."
redis-server --daemonize yes

# 2. الانتظار للتأكد من الجاهزية
sleep 5

# 3. تشغيل التطبيق بالأمر الذي نجح في Cloud Shell
echo "Starting Evolution API..."
exec node dist/main
