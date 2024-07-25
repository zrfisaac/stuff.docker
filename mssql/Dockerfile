# [ zrfisaac ]

# [ about ]
# - author : Isaac Caires
# . - email : zrfisaac@gmail.com
# . - site : zrfisaac.github.io

# [ dockerfile ]
# : - image
FROM mcr.microsoft.com/mssql/server:2022-latest

# : - about
LABEL description="A SQL Server image"
LABEL license="GPL-3.0"
LABEL maintainer="zrfisaac@gmail.com"
LABEL url="https://github.com/zrfisaac/stuff.docker"
LABEL version="0.0.1"

# : - config
ADD config/mssql.conf /var/opt/mssql/mssql.conf
ADD config/openssl.cnf /etc/ssl/openssl.cnf

# : - variable
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=ABcd!@34

# : - run
CMD ["tail", "-f", "/dev/null"]
