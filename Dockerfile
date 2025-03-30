FROM caddy:2.9.1-builder-alpine AS builder

RUN xcaddy build \
	--with github.com/sagikazarmark/caddy-fs-s3

FROM caddy:2.9.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
