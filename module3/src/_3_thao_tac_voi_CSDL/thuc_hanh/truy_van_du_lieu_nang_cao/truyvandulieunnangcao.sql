
use classicmodels;

select productCode, productName, buyprice, quantityInStock from products
where buyprice >56.76 and buyprice < 95.59;

select productCode, productName, buyprice, quantityInStock, productVendor, productLine 
from products 
where productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast';



