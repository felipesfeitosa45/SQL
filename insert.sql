-- levando em consideração que o campo Pk não é Ai(auto increment)
insert into tb_customer 
values(1,'Joãozinho Silva',88877766655)
-- levando em consideração que o campo Pk não é Ai(auto increment)
insert into tb_customer_address 
       (id_customer,cd_address_type,street,lot,zip_code)
values (1,'R','Rua das Flores',1,'01234-567')


insert into tb_customer_address 
values (1,'C','Rua das Pedras',100,'Conjunto 200','01234-567')
---
select co.nm_customer Nome,
       dm.ds_address_type "TIPO DE ENDEREÇO",
       ca.street Rua,
       ca.zip_code cep
from tb_customer_address ca
inner join  tb_customer co 
            on ca.id_customer = co.id_customer
inner join  dm_address_type dm 
            on ca.cd_address_type = dm.cd_address_type
-- insert OK 
commit;
