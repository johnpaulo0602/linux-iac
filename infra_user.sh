#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo ""

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo ""

echo "Criando usuários..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd -1 senha123)

echo "Usuários criados com sucesso!"

echo ""

echo "Adicionando usuários ao GRP_ADM"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

echo "Usuários adicionados com sucesso!"

echo ""

echo "Adicionando usuários ao GRP_VEN"

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

echo "Usuários adicionados com sucesso!"

echo ""

echo "Adicionando usuários ao GRP_SEC"

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Usuários adicionados com sucesso!"

echo ""

echo "Definindo proprietário e grupo dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alteração feita com sucesso!"

echo ""

echo "Definindo permissões de acesso "

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões criadas com sucesso!"

echo ""
echo ""

echo "Infraestrutura de usuários finalizada com sucesso!" 





