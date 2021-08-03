
--1.We want to run an Email Campaigns for customers of Store 2 (First, Last name, and Email address of customers from Store 2).

  select first_name,last_name,email from customer  WHERE store_id= ’2’ and active=’1’;

--2.List of the movies with a rental rate of 0.99$
select film_id,title from film where rental_rate='0.99';

--3.Your objective is to show the rental rate and how many movies are in each rental
rate categories
select rental_rate,count(*) as movie_count from film group by rental_rate;

--4.Which rating do we have the most films in?

select rating,max(rating_count) from (select rating,count(*) as rating_count from film group by rating) as T;

 --5. Which rating is most prevalent in each store?



--6. We want to mail the customers about the upcoming promotion



--7. List of films by Film Name, Category, and Language
	
select C.category_id,C.film_id,F.title from film_category as C join film as F on C.film_id=F.film_id group by category_id,film_id ;

--8. How many times each movie has been rented out?
select film_id, count(rental_id) as no_of_times_rented_out from rental r join inventory i on r.inventory_id=i.inventory_id  group by film_id;

--9. What is the Revenue per Movie?





--10. Most Spending Customer so that we can send him/her rewards or debate points
select T1.customer_id,first_name,last_name,email,spent_amount from customer as T1 join (select customer_id, sum(amount) as spent_amount from payment group by customer_id order by spent_amount desc limit 1) as T2 on T1.customer_id=T2.customer_id;

--11. What Store has historically brought the most revenue?


--12.How many rentals do we have for each month?

select MONTH(rental_date) as month, count(rental_id) as rental_per_month from rental group by month;


--13.Rentals per Month (such Jan => How much, etc)



--14. Which date the first movie was rented out?
select rental_date from rental order by rental_date limit 1;

--15. Which date the last movie was rented out?
select rental_date from rental order by rental_date desc limit 1;

--16. For each movie, when was the first time and last time it was rented out?
select film_id,min(rental_date) as first_time_rented,max(rental_date) as last_time_rented from (select film_id,rental_id,rental_date from rental join inventory on rental.inventory_id=inventory.inventory_id order by film_id ) as T group by film_id;

--17.What is the Last Rental Date of every customer?
select customer_id, max(rental_date) as last_rental_date  from (select T1.customer_id, rental_id,rental_date from customer as T1 join rental as T2 on T1.customer_id=T2.customer_id) as T group by customer_id;

--18.What is our Revenue Per Month?


--19.How many distinct Renters do we have per month?
select MONTH(rental_date) as month, count(distinct(customer_id)) as distinct_rentals from rental group by month;

--20. Show the Number of Distinct Film Rented Each Month

select MONTH(rental_date) as month,count(distinct(film_id)) as distinct_film from inventory as T1 join rental as T2 on T1.inventory_id=T2.inventory_id group by month ;

--21.Number of Rentals in Comedy, Sports, and Family
select T1.name,count(T5.rental_id) as number_of_rentals from category as T1 inner join film_category as T2 on T1.category_id=T2.category_id inner join film as T3 on T2.film_id=T3.film_id inner join inventory as T4 on T3.film_id= T4.film_id inner join rental as T5 on T4.inventory_id=T5.inventory_id where name in('Comedy','Sports','Family') group by name;

--22.Users who have been rented at least 3 times

select customer_id, count(*) as no_of_rent from rental group by customer_id having no_of_rent >=3;

--23. .How much revenue has one single store made over PG13 and R-rated films?


--24.Active User where active = 1
select * from customer where active=1;

--25.Reward Users: who has rented at least 30 times

select customer_id, count(*) as no_of_rent from rental group by customer_id having no_of_rent >=30;

--26.Reward Users who are also active
select rental.customer_id, first_name,last_name, count(*) as no_of_rent from rental join customer on rental.customer_id=customer.customer_id where active=1 group by rental.customer_id having no_of_rent >=30  ;

--27.All Rewards Users with Phone













