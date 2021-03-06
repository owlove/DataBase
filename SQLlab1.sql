﻿CREATE TABLE t_caterer(
  id_caterer INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(150) NOT NULL,
  address NVARCHAR2(150) NOT NULL,
  phone NVARCHAR2(150) NOT NULL,
  fax NVARCHAR2(150) NOT NULL);

CREATE TABLE t_store(
  id_store INT NOT NULL PRIMARY KEY,
  NAME NVARCHAR2(150) NOT NULL);

CREATE TABLE t_messure(
  id_messure INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(150) NOT NULL);

 CREATE TABLE t_employer(
  id_employer INT NOT NULL PRIMARY KEY,
  surname NVARCHAR2(150) NOT NULL,
  name NVARCHAR2(150) NOT NULL,
  father_name NVARCHAR2(150) NOT NULL);

CREATE TABLE t_material(
  id_material INT NOT NULL PRIMARY KEY,
  name NVARCHAR2(150) NOT NULL,
  id_messure INT NOT NULL REFERENCES T_MESSURE(ID_MESSURE)
  );

CREATE TABLE  t_inprice(
  id_inprice INT NOT NULL PRIMARY KEY,
  id_material INT NOT NULL REFERENCES T_MATERIAL(ID_MATERIAL),
  price_date NVARCHAR2(150) NOT NULL,
  price NVARCHAR2(150) NOT NULL);
  
 CREATE TABLE t_surplus(
  id_surplus INT NOT NULL PRIMARY KEY,
  id_material INT NOT NULL REFERENCES T_MATERIAL(ID_MATERIAL),
  id_store INT NOT NULL REFERENCES T_STORE(ID_STORE),
  volume NVARCHAR2(150) NOT NULL);
  
  CREATE TABLE  t_supply(
    id_supply INT NOT NULL PRIMARY KEY,
    id_caterer INT NOT NULL REFERENCES T_CATERER(ID_CATERER),
    id_material INT NOT NULL REFERENCES T_MATERIAL(ID_MATERIAL),
    id_store INT NOT NULL REFERENCES T_STORE(ID_STORE),
    supply_date NVARCHAR2(150) NOT NULL,
    volume NVARCHAR2(150) NOT NULL);

  CREATE TABLE t_section(
    id_section INT NOT NULL PRIMARY KEY,
    name NVARCHAR2(150) NOT NULL,
    id_employer INT NOT NULL REFERENCES T_EMPLOYER(ID_EMPLOYER));

    CREATE TABLE t_deliver(
      id_deliver INT NOT NULL PRIMARY KEY,
      id_section INT NOT NULL REFERENCES T_SECTION(ID_SECTION),
      id_material INT NOT NULL REFERENCES T_MATERIAL(ID_MATERIAL),
      id_store INT NOT NULL REFERENCES T_STORE(ID_STORE),
      deliver_date NVARCHAR2(150) NOT NULL);

    ALTER TABLE T_EMPLOYER
    ADD SEX CHAR(1) DEFAULT 'M' CHECK(SEX IN ('M','W'))    
    ADD BIRTHDATE DATE
    ADD MARRIAGE VARCHAR2(10);

    ALTER TABLE T_SURPLUS
    ADD STORE_DATE DATE
    ADD CONSTRAINT PK_SURPLUS
      PRIMARY KEY(ID_STORE, ID_MATERIAL);
  
    CREATE TABLE T_JOB(
      ID_JOB INT NOT NULL,
      NAME VARCHAR(30),
      CONSTRAINT PK_JOB PRIMARY KEY (ID_JOB));

    ALTER TABLE T_EMPLOYER
    ADD ID_JOB INT 
    ADD CONSTRAINT FK_EMPLOYER 
      FOREIGN KEY (ID_JOB) REFERENCES T_JOB(ID_JOB)
      ON DELETE SET NULL;
    
    ALTER TABLE T_MESSURE
      MODIFY (NAME VARCHAR2(5));
            
    ALTER TABLE T_CATERER DROP COLUMN address;
    ALTER TABLE T_CATERER ADD YRID_ADDRESS NOT NULL;
    ALTER TABLE T_CATERER ADD FAKT_ADDRESS NOT NULL;
    ALTER TABLE T_CATERER ADD E_MAIL NOT NULL;  

  ALTER TABLE T_INPRICE
  ADD CONSTRAINT PRIMARY KEY ID_MATERIAL 
    PRIMARY KEY (ID_MATERIAL, PRICE_DATE);

    CREATE TABLE t_group(
    id_group INT NOT NULL PRIMARY KEY,
    name_group NVARCHAR2(150) NOT NULL);
      
  ALTER TABLE T_MATERIAL ADD id_group INT NOT NULL;
  ALTER TABLE T_MATERIAL ADD CONSTRAINT FOREIGN KEY group_block (id_group) REFERENCES t_group(id_group) ;  
