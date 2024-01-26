#!/bin/bash

echo "Iniciando a criação de Diretórios do Sistema..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

sleep 3

echo "Iniciando a criação dos Grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

sleep 3

echo "Iniciando a criação dos Usuários do Sistema..."

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

echo "Usuários adm criados..."
sleep 3

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

echo "Usuários de vendas criados..."
sleep 3

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

echo "Usuários de secretariado criados..."
sleep 3

echo "Definindo as permissões de cada diretório..."

chown root:GRP_ADM /Scripts/adm
chown root:GRP_VEN /Scripts/ven
chown root:GRP_SEC /Scripts/sec

chmod 777 /Scripts/publico
chmod 770 /Scripts/adm
chmod 770 /Scripts/ven
chmod 770 /Scripts/sec

sleep 3

echo "Fim do script..."
