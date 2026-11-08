# Static site served by Caddy. The Caddyfile beside this file is the whole configuration.
FROM caddy:2-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY . /srv
# The Caddyfile is configuration, not content: keep it out of the served tree.
RUN rm -f /srv/Caddyfile /srv/Dockerfile /srv/.dockerignore
EXPOSE 8080
