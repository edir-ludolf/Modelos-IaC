#!/bin/bash

echo "criando estrutura de diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando os grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuarios..."

useradd adriano -m -s /bin/bash -p $(openssl passwd Amora123) -G GRP_ADM
useradd bruna -m -s /bin/bash -p $(openssl passwd Banana123) -G GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd Caju123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Damasco123) -G GRP_VEN
useradd eduardo -m -s /bin/bash -p $(openssl passwd Embu123) -G GRP_VEN
useradd fernanda -m -s /bin/bash -p $(openssl passwd Figo123) -G GRP_VEN

useradd gabriela -m -s /bin/bash -p $(openssl passwd Goiaba123) -G GRP_SEC
useradd henrique -m -s /bin/bash -p $(openssl passwd Habanero123) -G GRP_SEC
useradd ian -m -s /bin/bash -p $(openssl passwd Ilama123) -G GRP_SEC


echo "definindo as permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
