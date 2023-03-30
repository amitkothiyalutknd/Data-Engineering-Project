use classicmodels;
select count(*) from customers;
select count(*) from offices;
select min(salesRepEmployeeNumber) minimumSalesRepresentation,
max(salesRepEmployeeNumber) maximumSalesRepresentation from customers;
select c.contactFirstName, c.phone, c.country, o.officeCode, o.city, o.postalCode from customers as c
join offices o on c.postalCode = o.postalCode;
select sum(c.creditLimit) as creditScore, c.contactFirstName, c.phone, c.country, o.officeCode, o.city, o.postalCode, o.territory from customers as c
join offices o on c.postalCode = o.postalCode group by territory order by sum(c.creditLimit) asc;
select territory from offices;