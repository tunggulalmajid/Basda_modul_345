-- A. Where kolom string dan numerik 
-- select * from customers where lower(country) = 'brazil'
-- select * from products where discontinued = 1;
-- select supplier_id, company_name, address ||','|| city ||','|| country as "alamat lengkap" from suppliers where lower(country) <> 'canada'

--B. Wildcard dan left 
-- select * from suppliers where company_name ilike '%ltd%';
-- select * from employees where left(first_name, 1) < left(last_name, 1);
-- select * from suppliers where left(company_name,1) = left(contact_name,1);

--C. Where Kolom Bertipe tanggal 
-- select * from employees where hire_date > '10-12-1992'
-- select *, age(shipped_date, order_date) as selisih from orders where EXTRACT (DAY from (age(shipped_date, order_date))) > 10 or EXTRACT (MONTH from (age(shipped_date, order_date))) > 0 ;

--D. or 
-- select * from products where discontinued = 1 or units_in_stock = 0

-- select * from products where reorder_level < 10 or units_in_stock > 100

-- select first_name ||' '|| last_name as nama, extract(year from(age(now(), hire_date))) as "masa kerja", extract (year from (age (now(), birth_date))) as usia 
-- from employees 
-- where extract(year from(age(now(), hire_date))) > 35 or extract(year from(age(now(), birth_date))) > 60

-- select * from employees where lower(city) in ('london','seattle','tacoma');

--E. and
-- select *,age(shipped_date, order_date) as dikapalkan 
-- from orders 
-- where order_date > '25-12-1996' and extract(day from(age(shipped_date, order_date))) <= 20 and extract(month from(age(shipped_date, order_date))) = 0 ;

-- select * from products where discontinued = 1 and units_in_stock > 0;

-- select * from products where product_id % 2 = 0 and unit_price > 5;

-- select * from products where unit_price between 5 and 10;

--F. Gabungan and, or
-- select *, age(shipped_date, order_date) as dikapalkan from orders where order_date > '25-12-1996' 
-- and extract (day from age(shipped_date, order_date)) between 20 and 30 and extract (month from age(shipped_date, order_date)) = 0;   

-- select * from orders 
-- where (lower(ship_country) = 'brazil' or lower(ship_country) = 'italy') and 
-- (shipped_date >= '25-12-1996' and shipped_date <= '25-12-1997')  

-- select *, extract(year from(age (now(), birth_date)))as usia 
-- from employees
-- where (lower(city) = 'seattle' or lower(city) = 'new york') and (extract(year from(age (now(), birth_date))) > 50 and extract(year from(age (now(), birth_date))) < 60);

--Agregation
-- SUM
select sum(unit_price*units_in_stock) from products where product_id = 6;

--AVG
select avg(unit_price) from products where category_id = 1;










