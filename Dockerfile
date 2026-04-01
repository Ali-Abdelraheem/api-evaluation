FROM atendai/evolution-api:latest

# تعريف المنفذ بشكل صريح
ENV PORT=8080
EXPOSE 8080

# تشغيل التطبيق مباشرة
CMD ["node", "dist/src/main.js"]
