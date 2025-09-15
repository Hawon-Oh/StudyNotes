# 새로운 계정 생성
create user ohgiraffers@'%' identified by 'ohgiraffers';
-- @'%': 외부 ip로 접속가능
-- @'localhost' : 외부 ip로 접속불가

# DB schema 생성
create database menudb;
create database employeedb;

show databases;

grant all privileges on menudb.* to ohgiraffers@'%';
grant all privileges on employeedb.* to ohgiraffers@'%';

show grants for ohgiraffers@'%';