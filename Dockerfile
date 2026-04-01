FROM atendai/evolution-api:latest

# التأكد من أن التطبيق يستمع للمنفذ الذي ستحدده المنصة
ENV PORT=8080
EXPOSE 8080

CMD ["node", "./dist/src/main.js"]
