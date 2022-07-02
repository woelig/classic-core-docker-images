# Build

```bash
docker-compose build
```

# Start

```bash
docker-compose up -d
```

# Stop

```bash
docker-compose down
```

# View Logs

```bash
docker-compose logs -f
```

# Upgrade

```bash
docker-compose down
docker-compose pull
docker-compose build
docker-compose up -d
```