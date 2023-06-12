# Banco de Dados - Trabalho 3

## Tarefa 2
```
sudo -u postgres psql  << PSQL
> ALTER USER tpch WITH ENCRYPTED PASSWORD 'cenourinha';
> GRANT ALL PRIVILEGES ON DATABASE tpchdb TO tpch;
> \l
> \q
> PSQL
[sudo] senha para dan: 
could not change directory to "/home/dan": Permissão negada
ALTER ROLE
GRANT
                                  List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges   
-----------+----------+----------+-------------+-------------+-----------------------
 postgres  | postgres | UTF8     | pt_BR.UTF-8 | pt_BR.UTF-8 | 
 template0 | postgres | UTF8     | pt_BR.UTF-8 | pt_BR.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
 template1 | postgres | UTF8     | pt_BR.UTF-8 | pt_BR.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
 tpchdb    | postgres | UTF8     | pt_BR.UTF-8 | pt_BR.UTF-8 | =Tc/postgres         +
           |          |          |             |             | postgres=CTc/postgres+
           |          |          |             |             | tpch=CTc/postgres
(4 rows)
```

Mas depois de criar, não consegui conectar de jeito nenhum.

```
sudo psql -d tpchdb -U tpch -W >> erro1.txt
Password:
psql: error: connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: FATAL:  Peer authentication failed for user "tpch"
```

O erro ocorreu pois não havia usuário correspondente no sistema para tpch

Tive que criar usando o comando

```
sudo adduser tpch
```

E para entrar no bd:

```
sudo -u tpch psql -d tpchdb
```

Esse tutorial da [Digital Ocean - Install Postgres on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart) me ajudou pra caramba

Quando consegui conectar, enfim:

```
psql (14.8 (Ubuntu 14.8-0ubuntu0.22.04.1))
Type "help" for help.

tpchdb=> \conninfo
You are connected to database "tpchdb" as user "tpch" via socket in "/var/run/postgresql" at port "5432".
tpchdb=>
```

O python 3 já estava na máquina mas precisei instalar o pip:

```
sudo apt install python3-pip
```

Outro link [Digital Ocean - Install Python3](https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-an-ubuntu-22-04-server) que me salvou


## Tarefa 3

Pra tarefa 3 foi só rodar o ```run-query.sh``` que criei

## Tarefa 4

Na tarefa 4, precisei instalar o Jupyter Notebook

## Tarefa 5

[List Disks Ubuntu](https://linuxhint.com/list_disks_ubuntu/)

Isso ajudou

