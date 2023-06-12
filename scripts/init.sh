#!/bin/sh

# Inicia o postgres dentro do container docker
sudo service postgresql start
cd .. 
# Cria o usuário e banco e executa o INIT.sql onde está a atribuição de privilégios
sudo -u postgres createuser tpch
sudo -u postgres createdb tpchdb
sudo -u postgres psql -d postgres -f INI.sql  
cd tpch-pgsql
python3 tpch_pgsql.py -d tpchdb -U tpch -W tp3pass prepare
python3 tpch_pgsql.py -d tpchdb -U tpch -W tp3pass load
cd ..

exec "$@"