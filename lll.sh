#!/bin/bash

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin"


# Define la variable PS1, donde \n es el usuario, \h es el host, y \w es la carpeta en donde estamos
# y el $ indica si el usuario actual es root o no es root
PS1="\u@\h:\w$ "

