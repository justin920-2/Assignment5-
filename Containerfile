# Builder Stage
FROM alpine:latest AS builder
COPY data.txt /tmp/

# Final Stage
FROM fedora:latest AS final
COPY --from=builder /tmp/data.txt /

