CREATE DATABASE myDB;
USE myDB;

CREATE TABLE tbl_todolist(
	td_seq BIGINT auto_increment primary key,
    td_sdate VARCHAR(10) NOT NULL, 
    td_stime VARCHAR(10) NOT NULL,
    td_doit VARCHAR(300) NOT NULL,
    
    td_edate VARCHAR(10) default '', -- 완료날짜
    td_etime VARCHAR(10) default '' -- 완료시간
    );