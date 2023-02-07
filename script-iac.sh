#!/bin/bash

echo "criando diretorios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuarios..."
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "criando usuarios do grupo ADM..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM

echo "criando usuarios do grupo VEN..."
useradd debora -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN

echo "criando usuarios do grupo SEC..."
useradd josefina -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC 
useradd amanda -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC

echo "alterando grupo dos diretorios..."
chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "alterando permissoes dos diretorios..."
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FINALIZADO!!!"
