# Static site served by Caddy. The Caddyfile beside this file is the whole configuration.
FROM caddy:2-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY . /srv
EXPOSE 8080
