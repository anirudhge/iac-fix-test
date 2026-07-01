FROM alpine:3.19

# Install a minimal runtime
RUN apk add --no-cache python3

WORKDIR /app
COPY . /app

# NOTE: no USER instruction — the container runs as root.
# Trivy config flags this as DS-0002 / AVD-DS-0002 (run as non-root).
CMD ["python3", "-m", "http.server", "8080"]
