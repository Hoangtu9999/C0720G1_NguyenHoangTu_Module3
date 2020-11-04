
use classicmodels;

select c.customerNumber, customerName, phone, paymentDate, amount from customers as c
inner join payments as p
on c.customerNumber  = p.customerNumber
where city = 'Las Vegas';


select c.customerNumber, c.customerName, o.orderNumber, o.status from customers as c
left join orders as o
on c.customerNumber = o.customerNumber ;

select c.customerNumber, c.customerName, o.orderNumber, o.status
from customers as c LEFT JOIN orders as o
on c.customerNumber = o.customerNumber
where orderNumber is null

