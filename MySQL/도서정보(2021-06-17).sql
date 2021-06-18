USE mydb;
SELECT * FROM tbl_todolist;

CREATE table tbl_books(
	bk_isbn	CHAR(13)		PRIMARY KEY,
bk_title	VARCHAR(125)	NOT NULL	,
bk_ccode	CHAR(5)	NOT NULL	,
bk_acode	CHAR(5)	NOT NULL,	
bk_date	VARCHAR(10)		,
bk_price	INT		,
bk_pages	INT		
);

create table tbl_company(
	cp_code	CHAR(5)		PRIMARY KEY,
cp_title	VARCHAR(125)	NOT NULL,	
cp_ceo	VARCHAR(20)		,
cp_tel	VARCHAR(20)		,
cp_addr	VARCHAR(125)	,	
cp_genre	VARCHAR(10)		

);

create table tbl_author(
	au_code	CHAR(5)		PRIMARY KEY,
au_name	VARCHAR(50)	NOT NULL	,
au_tel	VARCHAR(20)		,
au_addr	VARCHAR(125)	,	
au_genre	VARCHAR(30)		

);

create database mybook;
use mybook;

show databases;

select * from tbl_company;


SHOW tables;

create table tbl_member(
mb_username	VARCHAR(20)		PRIMARY KEY,
mb_password	VARCHAR(20)	NOT NULL	,
mb_name	VARCHAR(10)	NOT NULL	,
mb_nname	VARCHAR(10)	NOT NULL,	
mb_email	VARCHAR(20)		,
mb_tel	VARCHAR(15)		,
mb_addr	VARCHAR(125)		
);