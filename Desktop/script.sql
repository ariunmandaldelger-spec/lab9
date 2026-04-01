set global general_log = 'on';
show variables like 'general_log_file';
select*from sql_invoicing.clients;

insert into sql_invoicing.clients
(client_id, name, address, city, state, phone)
values
(6, 'TestClient', '123 Test Street', 'TestCity', 'TC', '999-999-999');

update sql_invoicing.clients
set city = 'UpdatedCity'
where name = 'TestClient';

delete from sql_invoicing.clients
where name = 'TestClient';

use sql_invoicing;
select * from invoices;

select * from sql_invoicing.clients;
delete from sql_invoicing.clients where client_id = 1;

select * from sql_invoicing.clients;
delete from sql_invoicing.clients where client_id = 2;

set global general_log = 'on';
select * from sql_invoicing.clients;
delete from sql_invoicing.clients where client_id = 3;

select * from sql_invoicing.clients;

select * from sql_invoicing.payment_methods;

select * from sql_invoicing.payments;
delete from sql_invoicing.clients;
