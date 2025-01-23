# GinTonic Boilerplate

## Description
GinTonic Boilerplate is a lightweight yet powerful backend solution built with Go and the Gin framework. Designed to simplify API development, it integrates MySQL for data persistence, Docker for easy deployment, and GORM for seamless database operations. This boilerplate is an excellent starting point for creating scalable and maintainable backend applications.

## Features
- **Gin**: High-performance and minimalist web framework for Go.
- **GORM**: Powerful ORM library for Go with support for auto-migration and complex queries.
- **MySQL**: Relational database for robust and reliable data storage.
- **Docker**: Containerization for streamlined development and deployment workflows.
- **Environment Configuration**: `.env` support for easy environment-specific setup.
- **CORS**: Cross-Origin Resource Sharing enabled for secure API integration.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/marciovcmotta/gintonic-boilerplate
   cd gintonic-boilerplate
   ```

2. **Set up environment variables**:
   - Copy `.env.example` to `.env` and configure the values according to your local setup:
     ```plaintext
     DB_HOST=localhost
     DB_USER=admin
     DB_PASSWORD=adminadmin
     DB_NAME=gintonic-db
     DB_PORT=3306
     ```

3. **Run Docker containers**:
   ```bash
   docker-compose up -d
   ```

4. **Run the application**:
   ```bash
   go run main.go
   ```

## Scripts
- **Run the server**:
   ```bash
   go run main.go
   ```
- **Build the application**:
   ```bash
   go build
   ```
- **Run tests**:
   ```bash
   go test ./...
   ```

## Project Structure

```plaintext
Directory structure:
└── mottamarcio-gintonic-boilerplate/
    ├── README.md
    ├── LICENSE
    ├── docker-compose.yml
    ├── go.mod
    ├── go.sum
    └── src/
        ├── main.go
        ├── config/
        │   ├── database.go
        │   └── init.sql
        ├── controllers/
        │   └── player_controller.go
        ├── models/
        │   └── player.go
        ├── repositories/
        │   └── player_repository.go
        ├── routes/
        │   └── routes.go
        └── services/
            └── player_service.go
```

## Documentation
Detailed API documentation is available in the `docs` directory. This includes endpoint descriptions, request/response examples, and data models.

## Contributing
Contributions to GinTonic Boilerplate are always welcome! Feel free to submit pull requests, report issues, or suggest new features.

## License
This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.
