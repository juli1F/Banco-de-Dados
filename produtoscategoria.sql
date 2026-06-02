Microsoft Windows [versão 10.0.19045.6466]
(c) Microsoft Corporation. Todos os direitos reservados.

C:\Users\STREET>cd C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 65
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| produtos           |
| test               |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [(none)]> use produtos;
Database changed
MariaDB [produtos]> describe tables;
ERROR 1146 (42S02): Table 'produtos.tables' doesn't exist
MariaDB [produtos]> show tables;
+--------------------+
| Tables_in_produtos |
+--------------------+
| categoria          |
| produtos           |
+--------------------+
2 rows in set (0.001 sec)

MariaDB [produtos]> describe categoria;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| idcategoria | int(11)      | NO   | PRI | NULL    | auto_increment |
| categoria   | varchar(100) | NO   |     | NULL    |                |
| descricao   | varchar(255) | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
3 rows in set (0.021 sec)

MariaDB [produtos]> select * from categoria;
+-------------+--------------+-------------------------------------------------+
| idcategoria | categoria    | descricao                                       |
+-------------+--------------+-------------------------------------------------+
|           1 | Eletrônicos  | Aparelhos Celulares, notebooks, tablets etc.... |
|           2 | Limpeza      | Produto de limpeza                              |
|           3 | Decoração    |                                                 |
|           4 | Eletrônicos  | Aparelhos Celulares, notebooks, tablets etc...  |
|           5 | Limpeza      | Produto de limpeza                              |
|           6 | Decoracao    |                                                 |
|           7 | Instrumentos | Instrumentos de música e som                    |
|           8 | Informática  | Cabos, impressoras, etc                         |
|           9 | Vestuário    | Peças de roupas dos dois gêneros                |
|          10 | Calçados     | Tênis, Calçado                                  |
|          11 | Livros       | Romance, terror, comédia, aventura e etec       |
|          12 | Alimentos    | Arroz, feijão, carne etc                        |
|          13 | Bebidas      | Suco, refrigerante, cerveja etc                 |
|          14 | Móveis       | Sofá, mesa, cadeira, cama etc                   |
|          15 | Esportes     | futebol, basquete, volei, tenis de mesa etc     |
|          16 | Beleza       | Base, corretivo, pó, blush etc                  |
+-------------+--------------+-------------------------------------------------+
16 rows in set (0.001 sec)

MariaDB [produtos]> describe produtos;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| idproduto    | int(11)       | NO   | PRI | NULL    | auto_increment |
| idcategoria  | int(11)       | YES  | MUL | NULL    |                |
| nomeproduto  | varchar(100)  | NO   |     | NULL    |                |
| preco        | decimal(10,2) | NO   |     | NULL    |                |
| qtde         | int(11)       | NO   |     | NULL    |                |
| datacadastro | date          | NO   |     | NULL    |                |
| ativo        | bit(1)        | NO   |     | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
7 rows in set (0.017 sec)

MariaDB [produtos]> select * from produtos;
+-----------+-------------+------------------+--------+------+--------------+-------+
| idproduto | idcategoria | nomeproduto      | preco  | qtde | datacadastro | ativo |
+-----------+-------------+------------------+--------+------+--------------+-------+
|         1 |           3 | Cortina de 3m    | 495.65 |   20 | 2026-05-27   | ☺     |
|         2 |           2 | Detergente Ypê   |   2.99 |  100 | 2026-04-10   | ☺     |
|         3 |           7 | Violão           | 899.99 |   15 | 2026-05-30   | ☺     |
|         4 |           8 | Cabo da fonte    |  20.00 |   50 | 2024-09-12   | ☺     |
|         5 |           9 | Camiseta Social  |  70.00 |   47 | 2023-01-09   | ☺     |
|         6 |          10 | Salto alto       | 190.00 |   39 | 2025-06-01   | ☺     |
|         7 |          11 | Livro de Romance |  50.00 |  128 | 2021-08-01   | ☺     |
|         8 |          12 | Chocolate        |  10.00 |  230 | 2020-07-22   | ☺     |
|         9 |          13 | Suco de Goiaba   |  12.00 |  170 | 2023-09-03   | ☺     |
|        10 |          14 | Painel da TV     | 350.00 |   10 | 2019-04-23   | ☺     |
|        11 |          15 | Bola de futebol  |  90.00 |   49 | 2018-03-28   | ☺     |
|        12 |          16 | Blush            |  20.00 |  130 | 2017-02-17   | ☺     |
+-----------+-------------+------------------+--------+------+--------------+-------+
12 rows in set (0.000 sec)

MariaDB [produtos]>
