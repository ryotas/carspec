CREATE BIGFILE TABLESPACE rdftbs
DATAFILE '/u01/app/oracle/oradata/orcl/rdftbs01.dbf' SIZE 128M;

GRANT INHERIT PRIVILEGES ON USER sys TO mdsys;
EXECUTE SEM_APIS.CREATE_SEM_NETWORK('rdftbs');

CREATE USER rdfuser IDENTIFIED BY rdfuser
DEFAULT TABLESPACE rdftbs TEMPORARY TABLESPACE temp;

CREATE USER opguser IDENTIFIED BY opguser 
DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp;