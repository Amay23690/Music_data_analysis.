--EASY
--Q1) Who is senior most employee based on employee table?
select * from employee
order by levels desc
limit 1
--Q2)Which country having most invoices?
select billing_country,count(*) as c
from invoice
group by billing_country
order by c desc
limit 1
--Q3)What are top 3 values of total invoice?
select total from invoice
order by total desc
limit 3

--Q4)Which city has the best customers? We would like to throw a promotional Music
--Festival in the city we made the most money. Write a query that returns one city that
--has the highest sum of invoice totals. Return both the city name & sum of all invoice
--totals.
select billing_city,sum(total) as total_invoice
from invoice
group by invoice.billing_city
order by total_invoice desc
limit 1

--Q5)Who is the best customer? The customer who has spent the most money will be
--declared the best customer. Write a query that returns the person who has spent the
--most money.
select c.customer_id,c.first_name,c.last_name,sum(i.total)as total_invoice 
from
customer as c
join invoice as i
on c.customer_id=i.customer_id
group by c.customer_id
limit 1

   


            
             )








