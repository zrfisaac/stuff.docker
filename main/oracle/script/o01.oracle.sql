-- # [ zrfisaac ]

-- # [ about ]
-- # - author : Isaac Caires
-- # . - email : zrfisaac@gmail.com
-- # . - site : zrfisaac.github.io

-- # [ oracle ]
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER "O01" IDENTIFIED BY "1234" DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP PROFILE "DEFAULT" ACCOUNT UNLOCK;
GRANT UNLIMITED TABLESPACE TO "O01";
GRANT "CONNECT" TO "O01";
GRANT DBA TO "O01";
GRANT "RESOURCE" TO "O01";
GRANT CREATE SESSION,CREATE TABLE,CREATE VIEW TO "O01";
GRANT SELECT ON SYS.USER$ TO "O01";
GRANT SELECT ON SYS.OBJ$ TO "O01";
