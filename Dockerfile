FROM atendai/evolution-api:latest

USER root
RUN apk add --no-cache redis

COPY start.sh /start.sh
RUN chmod +x /start.sh

# المتغيرات التي أثبتت نجاحها في تجربة Cloud Shell
ENV SERVER_PORT=8080
ENV PORT=8080
ENV DATABASE_PROVIDER=postgresql
ENV DATABASE_CONNECTION_URI="postgresql://neondb_owner:npg_68IvxHBnuqGp@ep-blue-queen-a862sjs1-pooler.eastus2.azure.neon.tech/neondb?sslmode=require"
ENV AUTHENTICATION_API_KEY=my_secret_key_123
ENV AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true
ENV TELEMETRY_ENABLED=false
ENV CACHE_REDIS_ENABLED=true
ENV CACHE_REDIS_URI=redis://localhost:6379
ENV CACHE_REDIS_PREFIX_KEY=evolution

EXPOSE 8080

CMD ["/bin/sh", "/start.sh"]
