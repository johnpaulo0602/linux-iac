#!/bin/bash

echo "Criando usuarios convidados "

useradd guest1 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -1 senha123)
passwd -e guest1

useradd guest2 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -1 senha123)
passwd -e guest2

useradd guest3 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -1 senha123)
passwd -e guest3

echo "Finalizado!!!"
