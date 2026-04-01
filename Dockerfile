FROM atendai/evolution-api:latest

ENV SERVER_PORT=8080
ENV PORT=8080
ENV SERVER_URL=https://aliabdelraheem-dplhqcsf.b4a.run

ENV DATABASE_PROVIDER=postgresql
ENV DATABASE_CONNECTION_URI=postgresql://neondb_owner:npg_68IvxHBnuqGp@ep-blue-queen-a862sjs1-pooler.eastus2.azure.neon.tech/neondb?sslmode=require

ENV AUTHENTICATION_API_KEY=change_this_to_any_secret_key
ENV AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true
ENV TELEMETRY_ENABLED=false

EXPOSE 8080

CMD ["/bin/sh", "-c", "node dist/src/main.js > /proc/1/fd/1 2>/proc/1/fd/2 || sleep 3600"]
