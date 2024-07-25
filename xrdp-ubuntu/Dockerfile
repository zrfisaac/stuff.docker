# [ zrfisaac ]

# [ about ]
# - author : Isaac Caires
# . - email : zrfisaac@gmail.com
# . - site : zrfisaac.github.io

# [ dockerfile ]
# : - image
FROM ubuntu:latest

# : - about
LABEL description="A Ubuntu image"
LABEL license="GPL-3.0"
LABEL maintainer="zrfisaac@gmail.com"
LABEL url="https://github.com/zrfisaac/stuff.docker"
LABEL version="0.0.1"

# : - variable
ENV DEBIAN_FRONTEND noninteractive

# : - package
RUN apt -y update
RUN apt -y upgrade
RUN apt-get install -y
RUN apt-get install -y dbus-x11
RUN apt-get install -y xfce4
RUN apt-get install -y xfce4-clipman-plugin
RUN apt-get install -y xfce4-cpugraph-plugin
RUN apt-get install -y xfce4-netload-plugin
RUN apt-get install -y xfce4-screenshooter
RUN apt-get install -y xfce4-taskmanager
RUN apt-get install -y xfce4-terminal
RUN apt-get install -y xfce4-xkb-plugin
RUN apt-get install -y sudo
RUN apt-get install -y wget
RUN apt-get install -y xorgxrdp
RUN apt-get install -y xrdp

# : - clean
RUN apt remove -y light-locker xscreensaver
RUN apt autoremove -y
RUN rm -rf /var/cache/apt /var/lib/apt/lists

# : - copy
COPY ./config/run.sh /usr/bin/
RUN chmod +x /usr/bin/run.sh
RUN mkdir -p /var/run/dbus
RUN cp /etc/X11/xrdp/xorg.conf /etc/X11
RUN sed -i "s/console/anybody/g" /etc/X11/Xwrapper.config
RUN sed -i "s/xrdp\/xorg/xorg/g" /etc/xrdp/sesman.ini
RUN echo "xfce4-session" >> /etc/skel/.Xsession

# : - port
EXPOSE 3389

# : - variable
ENV P_USER_NAME "main"
ENV P_USER_PASSWORD "ABcd!@34"

# : - run
#CMD ["tail", "-f", "/dev/null"]
ENTRYPOINT ["/usr/bin/run.sh"]
