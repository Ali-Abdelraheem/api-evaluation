FROM atendai/evolution-api:latest

# المنفذ
ENV PORT=8080
EXPOSE 8080

# تشغيل التطبيق مباشرة لأن كل الخدمات خارجية
CMD ["node", "dist/main"]
