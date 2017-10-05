delete from tb_customer_address
where id_customer =(select id_customer 
                    from tb_customer where cpf_cnpj = 88877766655)
select *from tb_customer_address
-- delete Ok
commit;
delete from tb_customer where cpf_cnpj = 88877766655
select *from tb_customer
--Delete Ok
commit;