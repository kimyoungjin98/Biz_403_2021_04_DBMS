CREATE TABLESPACE iolistDB
DATAFILE 'C:/oraclexe/data/iolist.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

CREATE USER iouser IDENTIFIED BY iouser
DEFAULT TABLESPACE iolistDB;

GRANT DBA TO iouser;

DROP USER iouser CASCADE;

DROP TABLESPACE iolistDB
INCLUDING CONTENTS AND DATAFILES CASCADE CONSTRAINTS;