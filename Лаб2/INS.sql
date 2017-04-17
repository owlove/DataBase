
--1

INSERT INTO t_caterer(id_caterer, name,phone,fax,yrid_address,e_mail,fact_adress)
  VALUES ((seq_caterer.nextval),'name1','1','1','1','e_1','a_1');

INSERT INTO t_caterer(id_caterer, name,phone,fax,yrid_address,e_mail,fact_adress)
  VALUES ((seq_caterer.nextval), 'name2','2','2','2','e_2','a_2');

INSERT INTO t_caterer(id_caterer, name,phone,fax,yrid_address,e_mail,fact_adress)
  VALUES ((seq_caterer.nextval), 'name3','3','3','3','e_3','a_3');

INSERT INTO t_caterer(id_caterer, name,phone,fax,yrid_address,e_mail,fact_adress)
  VALUES ((seq_caterer.nextval), 'name4','4','4','4','e_4','a_4');

INSERT INTO t_caterer(id_caterer, name,phone,fax,yrid_address,e_mail,fact_adress)
  VALUES ((seq_caterer.nextval), 'name5','5','5','5','e_5','a_5');

--2

INSERT INTO t_deliver(id_deliver, deliver_date,id_section,id_material,id_store)
  VALUES ((seq_deliver.nextval),'1.1.1',1,1,1);

INSERT INTO t_deliver(id_deliver, deliver_date,id_section,id_material,id_store)
  VALUES ((seq_deliver.nextval),'2.2.2',2,2,2);

INSERT INTO t_deliver(id_deliver, deliver_date,id_section,id_material,id_store)
  VALUES ((seq_deliver.nextval),'3.3.3',3,3,3);

INSERT INTO t_deliver(id_deliver, deliver_date,id_section,id_material,id_store)
  VALUES ((seq_deliver.nextval),'4.4.4',4,4,4);

INSERT INTO t_deliver(id_deliver, deliver_date,id_section,id_material,id_store)
  VALUES ((seq_deliver.nextval),'5.5.5',5,5,5);


--3

INSERT INTO t_employer(id_employer, name,surname,father_name)
  VALUES ((seq_employer.nextval), 'a','a','a');

INSERT INTO t_employer(id_employer, name,surname,father_name)
  VALUES ((seq_employer.nextval), 'b','b','b');

INSERT INTO t_employer(id_employer, name,surname,father_name)
  VALUES ((seq_employer.nextval), 'c','c','c');

INSERT INTO t_employer(id_employer, name,surname,father_name)
  VALUES ((seq_employer.nextval), 'd','d','d');

INSERT INTO t_employer(id_employer, name,surname,father_name)
  VALUES ((seq_employer.nextval), 'e','e','e');

--4

INSERT INTO t_group(id_group, name_group)
  VALUES ((seq_group.nextval),'1');

INSERT INTO t_group(id_group, name_group)
  VALUES ((seq_group.nextval),'2');

INSERT INTO t_group(id_group, name_group,)
  VALUES ((seq_group.nextval),'3');

INSERT INTO t_group(id_group, name_group)
  VALUES ((seq_group.nextval),'4');

INSERT INTO t_group(id_group, name_group)
  VALUES ((seq_group.nextval),'5');

  --5

 INSERT INTO t_inprice(price_date, price, id_material)
  VALUES ((seq_inprice.nextval),'1.1.1','1',1);

INSERT INTO t_inprice(price_date, price, id_material)
  VALUES ((seq_inprice.nextval),'2.2.2','2',2);

INSERT INTO t_inprice(price_date, price, id_material)
  VALUES ((seq_inprice.nextval),'3.3.3','3',3);

INSERT INTO t_inprice(price_date, price, id_material)
  VALUES ((seq_inprice.nextval),'4.4.4','4',4);

INSERT INTO t_inprice(price_date, price, id_material)
  VALUES ((seq_inprice.nextval),'5.5.5','5',5);

--6

INSERT INTO t_material(id_material, name,id_measure)
  VALUES ((seq_material.nextval), 'name1',1);

INSERT INTO t_material(id_material, name,id_measure)
  VALUES ((seq_material.nextval), 'name2',2);

INSERT INTO t_material(id_material, name,id_measure)
  VALUES ((seq_material.nextval), 'name3',3);

INSERT INTO t_material(id_material, name,id_measure)
  VALUES ((seq_material.nextval), 'name4',4);

INSERT INTO t_material(id_material, name,id_measure)
  VALUES ((seq_material.nextval), 'name5',5);

  --7


INSERT INTO t_messure(id_measure, name)
  VALUES ((seq_measure.nextval), 'name1');

INSERT INTO t_messure(id_measure, name)
  VALUES ((seq_measure.nextval), 'name2');

INSERT INTO t_messure(id_measure, name)
  VALUES ((seq_measure.nextval), 'name3');

INSERT INTO t_messure(id_measure, name)
  VALUES ((seq_measure.nextval), 'name4');

INSERT INTO t_messure(id_measure, name)
  VALUES ((seq_measure.nextval), 'name5');

--8

INSERT INTO t_section(id_section, name,id_employer)
  VALUES ((seq_section.nextval), 'name1',1);

INSERT INTO t_section(id_section, name,id_employer)
  VALUES ((seq_section.nextval), 'name2',2);

INSERT INTO t_section(id_section, name,id_employer)
  VALUES ((seq_section.nextval), 'name3',3);

INSERT INTO t_section(id_section, name,id_employer)
  VALUES ((seq_section.nextval), 'name4',4);

INSERT INTO t_section(id_section, name,id_employer)
  VALUES ((seq_section.nextval), 'name5',5);

--9

INSERT INTO t_store(id_store, name)
  VALUES ((seq_store.nextval), 'name1');

INSERT INTO t_store(id_store, name)
  VALUES ((seq_store.nextval), 'name2');

INSERT INTO t_store(id_store, name)
  VALUES ((seq_store.nextval), 'name3');

INSERT INTO t_store(id_store, name)
  VALUES ((seq_store.nextval), 'name4');

INSERT INTO t_store(id_store, name)
  VALUES ((seq_store.nextval), 'name5');

--10

INSERT INTO t_supply(id_supply, supply_date,volume,id_caterer,id_material,id_store)
  VALUES ((seq_supply.nextval), '1.1.1','1',1,1,1);

INSERT INTO t_supply(id_supply, supply_date,volume,id_caterer,id_material,id_store)
  VALUES ((seq_supply.nextval), '2.2.2','2',2,2,2);

INSERT INTO t_supply(id_supply, supply_date,volume,id_caterer,id_material,id_store)
  VALUES ((seq_supply.nextval), '3.3.3','3',3,3,3);

INSERT INTO t_supply(id_supply, supply_date,volume,id_caterer,id_material,id_store)
  VALUES ((seq_supply.nextval), '4.4.4','4',4,4,4);

INSERT INTO t_supply(id_supply, supply_date,volume,id_caterer,id_material,id_store)
  VALUES ((seq_supply.nextval), '5.5.5','5',5,5,5);

 --11

INSERT INTO t_surplus(id_surplus, volume,id_material,id_store)
  VALUES ((seq_surplus.nextval), '1',1,1);

INSERT INTO t_surplus(id_surplus, volume,id_material,id_store)
  VALUES ((seq_surplus.nextval), '2',2,2);

INSERT INTO t_surplus(id_surplus, volume,id_material,id_store)
  VALUES ((seq_surplus.nextval), '3',3,3);

INSERT INTO t_surplus(id_surplus, volume,id_material,id_store)
  VALUES ((seq_surplus.nextval), '4',4,4);

INSERT INTO t_surplus(id_surplus, volume,id_material,id_store)
  VALUES ((seq_surplus.nextval), '5',5,5);