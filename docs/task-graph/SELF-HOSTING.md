# Self-Hosting the AI Task Graph

## Recommended topology

Do not begin with Kubernetes.

Start with one dedicated Proxmox VM running Docker Compose.

```text
VPN / LAN
    │
Reverse Proxy
    │
    ├── Web UI
    └── API
          ├── PostgreSQL
          └── Workers
                └── Model Gateway
```

## Proxmox

Recommended initial VM:

- Ubuntu LTS or another supported server Linux
- 4–8 vCPU
- 8–16 GB RAM
- 80–160 GB SSD
- private VLAN/LAN
- no direct public database exposure

Use a VM rather than privileged Docker-in-LXC for the first deployment.

## Docker services

Required:

1. organizer-web
2. organizer-api
3. organizer-worker
4. postgres
5. reverse-proxy

Optional:

6. valkey for high-volume transient queues/cache
7. ollama on a GPU-capable host
8. object storage for large artifacts
9. observability stack

PostgreSQL remains the durable source of truth.

## Network

Only the reverse proxy should be reachable from the user network.

PostgreSQL stays on an internal Docker network.

Workers should not need public inbound access.

## Backups

Back up:

- PostgreSQL
- project documents
- task graphs
- execution history
- configuration without secrets

Test restoration before production.

## Scaling

Phase 1: one VM, one Compose stack.

Phase 2: separate PostgreSQL storage/VM.

Phase 3: dedicated worker pool.

Phase 4: dedicated GPU model host.

Phase 5: Kubernetes only when operational scale requires it.

## Authentication

Keep the control plane private initially.

Use existing VPN infrastructure where possible.

If public access becomes necessary, require TLS and authenticated access at the gateway.
