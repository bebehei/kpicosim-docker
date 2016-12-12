#!/bin/bash

export USER_UID=${USER_UID:-1000}
export USER_GID=${USER_GID:-1000}
export USER_NAME=${USER_NAME:-kpicosim}

id -g $USER_NAME 2>/dev/null >/dev/null || groupadd -g $USER_GID $USER_NAME
id -u $USER_NAME 2>/dev/null >/dev/null || useradd -m -u $USER_UID -g $USER_GID $USER_NAME

su - $USER_NAME -c /usr/bin/kpicosim
