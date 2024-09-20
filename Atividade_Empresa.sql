create database empresa4;
use empresa4;
create table  departamento(
depcodigo int auto_increment primary key,
depnome varchar(50)
);



create table dependente(
dependente_codigo int auto_increment primary key,
fun_codigo int,
dependente_nome varchar(50),
foreign key (fun_codigo) references funcionario(fun_codigo)
);
create table funcionario(
fun_codigo int auto_increment primary key,
depcodigo int,
fun_nome varchar(50),
nascimento date,
salario decimal(10,2),
foreign key (depcodigo) references departamento(depcodigo)
);
