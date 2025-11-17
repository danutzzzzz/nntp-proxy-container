FROM alpine:latest

# Install required dependencies
RUN apk add --no-cache \
    git \
    cargo \
    rust \
    musl-dev \
    openssl-dev \
    pkgconfig

# Set working directory
WORKDIR /app

# Clone and build the project
RUN git clone https://github.com/mjc/nntp-proxy.git && \
    cd nntp-proxy && \
    cargo build --release

# Set the working directory to the cloned repo
WORKDIR /app/nntp-proxy

# The binary will be available at /app/nntp-proxy/target/release/nntp-proxy
CMD ["/app/nntp-proxy/target/release/nntp-proxy"]