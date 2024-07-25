#!/bin/bash
fn_start() {
    rm -rf /var/run/xrdp-sesman.pid
    rm -rf /var/run/xrdp.pid
    rm -rf /var/run/xrdp/xrdp-sesman.pid
    rm -rf /var/run/xrdp/xrdp.pid
    xrdp-sesman && exec xrdp -n
}
fn_stop() {
    xrdp --kill
    xrdp-sesman --kill
    exit 0
}
if [ "${P_USER_NAME}" != "" ] && [ ! -d "/home/${P_USER_NAME}" ]
then
	useradd -m -s /bin/bash ${P_USER_NAME}
	wait
	echo "${P_USER_NAME}":"${P_USER_PASSWORD}" | chpasswd 
	wait
	usermod -aG sudo ${P_USER_NAME}
fi
trap "fn_stop" SIGKILL SIGTERM SIGHUP SIGINT EXIT
fn_start
