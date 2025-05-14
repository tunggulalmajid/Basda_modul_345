--A.Select
select * from suppliers;

select * from customers;

--B. Select Bagian Kolom
select product_id, product_name, unit_price, units_in_stock from products

select supplier_id, company_name, country,  phone from suppliers

-- C Alias
select product_id as idprod, product_name, unit_price as harga, units_in_stock as "[stok brg]" 
from products 

select supplier_id , company_name as namaprsh, country, phone as "[contact person]" from suppliers;

--D. Penggabungan kolom
select supplier_id, company_name, address ||','|| city ||','|| country as alamat from suppliers;

select title ||' '|| first_name||' '|| last_name as "nama lengkap",
address||','|| city ||','|| country as "alamat lengkap" from employees;

--E. Kolom bertipe tanggal 
select first_name || ' ' || last_name as "nama lengkap", birth_date as tgllahir,
TO_CHAR(now() :: DATE, 'mm, dd, yyyy') as sekarang
from employees;

select first_name || ' ' || last_name as "nama lengkap", birth_date as tgllahir,
TO_CHAR(now() :: DATE, 'mm, day, yy') as sekarang
from employees;

--F. Selisih tanggal
select employee_id, birth_date, hire_date, 
EXTRACT (YEAR FROM age(hire_date, birth_date)) as "usian saat masuk kerja" from employees;

select employee_id, hire_date, TO_CHAR(now():: DATE, 'day - mm - yyyy') as "tanggal sekarang", EXTRACT (YEAR FROM age(now(), hire_date)) as "masa kerja" from employees

--G Perhitungan antar kolom pada satu baris
select order_id, quantity, unit_price, quantity * unit_price from order_details

select product_id, unit_price, units_on_order, unit_price*units_on_order as "nilai barang yang dipesan" from products

--H. Order By
select product_name, units_on_order from products order by units_on_order 

select last_name, first_name, age(now(), hire_date) as "lama bekerja" 
from employees 
order by last_name desc

--I. Sorting 2 Kolom
select product_name, unit_price, (unit_price * 0.75) as "harga setelah" 
from products
order by product_name asc, unit_price desc







