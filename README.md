# 🐳 NNTP Proxy - Docker Edition

<div align="center">

![Docker](https://img.shields.io/badge/docker-ready-brightgreen.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Rust](https://img.shields.io/badge/rust-1.85+-orange.svg)

**Containerized deployment of NNTP Proxy**

A fully containerized version of [NNTP Proxy](https://github.com/mjc/nntp-proxy) - a high-performance NNTP proxy server written in Rust with intelligent hybrid routing, round-robin load balancing, and TLS support.

</div>

---

## 📦 What is this?

This repository provides a **Docker-ready implementation** of NNTP Proxy, making it simple to deploy and manage as a container. NNTP Proxy offers intelligent per-command routing that auto-switches to stateful when needed, with support for load balancing across multiple backend servers.

For full documentation on features, architecture, and advanced configuration, visit the [**main NNTP Proxy repository**](https://github.com/mjc/nntp-proxy).

---

## ✨ Key Features

- 🧠 **Hybrid routing mode** - Intelligent per-command routing that auto-switches to stateful when needed
- 🔄 **Round-robin load balancing** - Distributes connections across multiple backend servers
- 🔐 **TLS/SSL support** - Secure backend connections with certificate verification
- ⚡ **High performance** - Lock-free routing, optimized response parsing, efficient I/O
- 🏥 **Health checking** - Automatic backend health monitoring with failure detection
- 📊 **Connection pooling** - Pre-authenticated connections with configurable limits

---

## 🔧 Docker Compose Example

```yaml
version: '3.8'

services:
  rescan:
    container_name: rescan
    image: ghcr.io/danutzzzzz/rescan-container-dev:latest
    volumes:
      - ./config.yaml:/etc/nntp-proxy/config.yaml:ro
    ports:
      - "8119:8119"
    environment:
      - TZ=Europe/London
      - NNTP_PROXY_ROUTING_MODE: standard
      - RUST_LOG: info
    restart: unless-stopped
```

## 📚 Documentation & Support

For comprehensive documentation, architecture details, and advanced features:

👉 **[Visit the main NNTP Proxy repository](https://github.com/mjc/nntp-proxy)**

Topics covered in the main repo:
- Detailed architecture and routing modes
- Performance optimization and benchmarks
- TLS/SSL configuration and certificate management
- Health checking and connection pooling
- Protocol compliance (RFC 3977, RFC 4643, RFC 5536)
- Building from source and development setup

---

## 🙏 Credits

This is a containerized implementation of [NNTP Proxy](https://github.com/mjc/nntp-proxy) by mjc. All credit for the core application goes to the original author.

Built with Rust and the excellent Tokio async ecosystem.

---

## 📄 License

MIT License - See the [main repository](https://github.com/mjc/nntp-proxy) for full license details.

---

<div align="center">

**[⬆ Back to Top](#-nntp-proxy---docker-edition)**

Made with 🐳 by [Pukabyte](https://github.com/Pukabyte)

</div>
