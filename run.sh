#!/bin/bash

XSOCK=/tmp/.X11-unix
XAUTH=$(mktemp)

xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f ${XAUTH} nmerge -

docker run -it --rm \
	--cap-add=SYS_ADMIN \
	--env="USER_UID=$(id -u)" \
	--env="USER_GID=$(id -g)" \
	--env="DISPLAY" \
	--env="XAUTHORITY=${XAUTH}" \
	--volume=${XSOCK}:${XSOCK} \
	--volume=${XAUTH}:${XAUTH} \
	bebehei/kpicosim:latest

rm ${XAUTH}
