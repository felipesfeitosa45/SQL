create table tb_customer
 (  
  id_customer int,
  nm_customer varchar2(50),
  cpf_cnpj numeric,
  constraint pkCustomer primary key (id_customer)
  );
create table dm_address_type
 (
  cd_address_type char(1),
  ds_address_type varchar(50),
  constraint pkAddress primary key (cd_address_type)
 );
 create table tb_customer_address
 (
  id_customer int,
  cd_address_type char(1),
  street varchar2(50),
  lot int,
  references varchar2(50),
  zip_code varchar(50),
  constraint fkCustomer foreign key (id_customer)
  references tb_customer(id_customer),
  constraint fkCd foreign key (cd_address_type)
  references dm_address_type(cd_address_type)
 );
alter table tb_customer_address
add constraint pkCustormerCd primary key (id_customer,cd_address_type);
 