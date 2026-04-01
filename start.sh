#!/bin/sh

# 1. تشغيل ريديس في الخلفية
echo "Starting Redis..."
redis-server --daemonize yes

# 2. الانتظار للتأكد من أن ريديس استيقظ
sleep 3

# 3. تشغيل التطبيق مع التأكد من المسار
echo "Starting Evolution API..."
# جربنا dist/src/main.js - لو فشل جرب dist/main.js
exec node dist/src/main.js
