select * from products
where product_id = 1
select * from categories
select * from customers
select * from orders
select * from order_details
where product_id = 1
select * from employees
select * from territories
select * from employee_territories
select * from region
--Soal A

select p.product_name as "nama produk", p.unit_price as "harga", c.category_name as "kategori"
from products p
join categories c
on c.category_id = p.category_id
order by c.category_name

select c.company_name as Perusahaan, o.order_id as "id transaksi", o.order_date as "tanggal pembelian"
from customers c
join orders o
on c.customer_id = o.customer_id
order by company_name

select o.order_id as "id order", o.order_date as "tanggal order", od.product_id as 'id barang'
from orders o
join order_details od
on o.order_id = od.order_id

--Soal B

select p.product_name as "Nama Produk", o.order_date as "Tanggal Order", (od.unit_price * od.quantity) as "Harga Barang yang Terjual"
from order_details od
join orders o on o.order_id = od.order_id
join products p  on p.product_id = od.product_id

select e.first_name || ' ' || e.last_name as "Full Name", t.territory_description as "Nama Territory", r.region_description as tempat
from territories t
join employee_territories et on t.territory_id = et.territory_id
join region r on r.region_id = t.region_id
join employees e on e.employee_id = et.employee_id

select c.contact_name as "Nama Customer", o.order_id as "ID Order", o.order_date as "Tanggal Pemesanan", s.company_name as "nama shipper"
from orders o
join customers c on o.customer_id = c.customer_id
join shippers s on o.ship_via = s.shipper_id

select * from suppliers
select * from products
select * from categories

select s.company_name as "nama supplier", c.category_name as "kategori barang"
from products p
join categories c on c.category_id = p.category_id
join suppliers s on s.supplier_id = p.supplier_id

--SOAL C

select p.product_name as "nama product", p.unit_price as "harga", c.category_name as "kategori product"
from products p
join categories c on p.category_id = c.category_id
where p.unit_price < 10 and c.category_name ilike 'beverages'

select c.company_name as "Nama Perusahaan Customer", o.order_id "ID Transaksi", o.order_date "Tanggal Pembelian"
from orders o
join customers c on c.customer_id = o.customer_id
where c.country = 'USA' and EXTRACT(year from o.order_date) = 1997
order by o.order_date

select s.company_name as "Nama Supplier", c.category_name as "Kategori Barang"
from products p
join suppliers s on s.supplier_id = p.supplier_id
join categories c on c.category_id = p.category_id
where p.unit_price between 5 and 10

-- SOAL D



