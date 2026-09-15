<p align="center">
  <a href="https://github.com/bigois/postgres4protheus">
    <img src="https://raw.githubusercontent.com/bigois/postgres4protheus/main/images/logo.png" alt="PostgreSQL for TOTVS Protheus logo" width="25%" height="25%">
  </a>
</p>

<h1 align="center">PostgreSQL for TOTVS Protheus</h1>

<p align="center">
  A Dockerized PostgreSQL database configured for use with the TOTVS Protheus ERP.
</p>

<p align="center">
  <a href="https://hub.docker.com/r/guilhermebigois/postgres4protheus">Docker Hub</a>
  ·
  <a href="https://github.com/bigois/postgres4protheus/issues">Issues and improvements</a>
</p>

<p align="center">
  <a href="https://github.com/bigois/postgres4protheus/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/bigois/postgres4protheus.svg?style=for-the-badge" alt="Contributors">
  </a>
  <a href="https://github.com/bigois/postgres4protheus/network/members">
    <img src="https://img.shields.io/github/forks/bigois/postgres4protheus.svg?style=for-the-badge" alt="Forks">
  </a>
  <a href="https://github.com/bigois/postgres4protheus/stargazers">
    <img src="https://img.shields.io/github/stars/bigois/postgres4protheus.svg?style=for-the-badge" alt="Stars">
  </a>
  <a href="https://github.com/bigois/postgres4protheus/issues">
    <img src="https://img.shields.io/github/issues/bigois/postgres4protheus.svg?style=for-the-badge" alt="Issues">
  </a>
  <a href="https://github.com/bigois/postgres4protheus/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/bigois/postgres4protheus.svg?style=for-the-badge" alt="MIT License">
  </a>
</p>

## About

<img src="https://raw.githubusercontent.com/bigois/postgres4protheus/main/images/about.gif" alt="PostgreSQL for TOTVS Protheus running" width="80%" height="80%">

This image is built from the official [PostgreSQL Docker image](https://hub.docker.com/_/postgres) and follows the database settings required by TOTVS Protheus. The initialization scripts create a Protheus database with:

- `WIN1252` encoding
- `C` collation
- `C` character type

These settings are based on the [TOTVS documentation for supported databases](https://tdn.totvs.com/pages/viewpage.action?pageId=187533675).

## Purpose

Setting up a Protheus development environment can be difficult for developers who are starting with ADVPL or learning how the ERP runs on Linux and Docker. This project provides a reproducible PostgreSQL container so that the database layer can be started with fewer manual setup steps.

## Prerequisites

- Docker with Docker Compose
- The system requirements required by your Docker installation

If Docker is not installed yet, refer to the [official Docker installation documentation](https://docs.docker.com/get-docker/).

## Running locally

Clone the repository and start the database:

```bash
git clone https://github.com/bigois/postgres4protheus.git
cd postgres4protheus
docker compose up -d
```

The container exposes PostgreSQL on port `5432`.

To follow the startup logs:

```bash
docker compose logs -f postgres
```

To stop the container:

```bash
docker compose down
```

## Configuration

The Compose file defines the PostgreSQL password and the values used to create the Protheus database. Review and replace these values before using the container outside a local study environment:

| Variable | Purpose |
| --- | --- |
| `POSTGRES_PASSWORD` | Password for the PostgreSQL superuser. |
| `PROTHEUS_DBUSER` | User created for the Protheus database. |
| `PROTHEUS_DBPASSWORD` | Password for the Protheus database user. |
| `PROTHEUS_DBNAME` | Name of the Protheus database. |

The initialization script applies the Protheus values to `init.sql` before PostgreSQL starts for the first time.

## Links

- [Docker Hub image](https://hub.docker.com/r/guilhermebigois/postgres4protheus)
- [TOTVS database documentation](https://tdn.totvs.com/pages/viewpage.action?pageId=187533675)
- [Report an issue](https://github.com/bigois/postgres4protheus/issues)

## License

This project is licensed under the [MIT License](LICENSE).
