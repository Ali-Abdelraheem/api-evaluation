#!/bin/sh
# تشغيل ريديس في الخلفية
redis-server --daemonize yes
# الانتظار قليلاً للتأكد من عمله
sleep 2
# تشغيل التطبيق الأساسي
node dist/src/main.js
