# [ zrfisaac ]

# [ about ]
# - author : Isaac Caires
# . - email : zrfisaac@gmail.com
# . - site : zrfisaac.github.io

# [ dockerfile ]
# : - image
FROM archlinux:latest

# : - about
LABEL description="A Arch Linux image"
LABEL license="GPL-3.0"
LABEL maintainer="zrfisaac@gmail.com"
LABEL url="https://github.com/zrfisaac/stuff.docker"
LABEL version="0.0.1"

# : - package
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm xorg-server
RUN pacman -S --noconfirm xfce4
RUN pacman -S --noconfirm xfce4-goodies

# : - aur
RUN mkdir -p /aur
WORKDIR /aur
RUN git clone https://aur.archlinux.org/xrdp.git
WORKDIR /aur/xrdp
RUN makepkg -sri
WORKDIR /aur
RUN git clone https://aur.archlinux.org/xorgxrdp.git
WORKDIR /aur/xorgxrdp
RUN makepkg -sri
RUN rm -rvf /aur

# : - run
CMD ["tail", "-f", "/dev/null"]
