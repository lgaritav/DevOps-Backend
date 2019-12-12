#!/bin/bash
su - db2inst1
clear
echo "Creando la base de datos y la tabla..."
db2 create db test
db2 connect to test
db2 "CREATE TABLE OPER01
(HORA_TRANS timestamp not null,
 OPERANDO1  decimal(12,2) not null,
 OPERANDO2  decimal(12,2) not null,
 OPERADOR varchar(5) not null,
 Primary Key (HORA_TRANS))"
echo "Verificando la informacion creada..."
db2 connect to test
db2 list tables
db2 describe table db2inst1.oper01
db2 disconnect test