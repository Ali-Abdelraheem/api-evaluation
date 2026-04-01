FROM atendai/evolution-api:latest

USER root
# تثبيت ريديس
RUN apk add --no-cache redis

# نسخ ملف التشغيل
COPY start.sh /start.sh
RUN chmod +x /start.sh

# إعدادات البيئة (تأكد من مطابقة هذه الأسماء)
ENV SERVER_PORT=8080
ENV PORT=8080
ENV DATABASE_ENABLED=true
ENV DATABASE_CONNECTION_TYPE=postgres
ENV DATABASE_CONNECTION_URL="postgresql://neondb_owner:npg_68IvxHBnuqGp@ep-blue-queen-a862sjs1-pooler.eastus2.azure.neon.tech/neondb?sslmode=require"
ENV AUTHENTICATION_API_KEY=my_secret_key_123
ENV CACHE_REDIS_ENABLED=true
ENV CACHE_REDIS_URI=redis://localhost:6379

EXPOSE 8080

# تشغيل عبر sh لضمان معالجة الإشارات بشكل صحيح
CMD ["/bin/sh", "/start.sh"]
