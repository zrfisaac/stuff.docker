<!-- # [ zrfisaac ] -->

<!-- # [ about ] -->
<!-- # - author : Isaac Caires -->
<!-- # . - email : zrfisaac@gmail.com -->
<!-- # . - site : zrfisaac.github.io -->
<!-- # - base : none -->

<!-- # [ markdown ] -->

# SQL Server Docker Image

## Overview

This repository contains a Dockerfile to create a Docker image for Microsoft SQL Server 2022. The image is configured with custom settings and is intended for development and testing purposes.

## Features

- Based on the official [mcr.microsoft.com/mssql/server:2022-latest](https://hub.docker.com/_/microsoft-mssql-server) image.

- Custom SQL Server configuration.

- Custom OpenSSL configuration.

- Pre-configured environment variables for accepting EULA and setting the SA password.

## Getting Started

### Prerequisites

- Docker installed on your local machine. You can download Docker from [here](https://www.docker.com/get-started).

### Building the Image

Clone the repository:

```sh
git clone https://github.com/zrfisaac/stuff.docker.git
cd stuff.docker
```

Build the Docker image:

```sh
docker build -t custom-mssql-server .
```

### Running the Container

To run the container, execute the following command:

```sh
docker run -d --name mssql-server -e ACCEPT_EULA=Y -e SA_PASSWORD=YourStrong!Passw0rd -p 1433:1433 custom-mssql-server
```

This command will start the SQL Server container in detached mode with port 1433 exposed.

### Configuration Files

The image includes custom configuration files:

- "mssql.conf" : Custom SQL Server configuration.

- "openssl.cnf" : Custom OpenSSL configuration.

These files are located in the "config" directory and are added to the container during the build process.

### Environment Variables

- "ACCEPT_EULA" : Must be set to "Y" to accept the SQL Server EULA.

- "SA_PASSWORD" : Sets the password for the SQL Server "sa" user.

### License

This project is licensed under the GPL-3.0 License - see the LICENSE file for details.

### Maintainer

Isaac Caires

zrfisaac@gmail.com

https://zrfisaac.github.io

### Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any changes.
