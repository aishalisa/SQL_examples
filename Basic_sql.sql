 select * from actor limit 10;
 select first_name, last_name from actor where last_name like "BER%" order by last_name;
 select distinct first_name from actor where first_name like "%y" order by first_name;
 insert into actor (first_name, last_name, last_update)
 values ("Brad", "Pitt", "2022-11-07");
 delete from actor where actor_id = 219;
 update actor set first_name = "William" where actor_id = 220;
 select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
 from customer join rental on customer.customer_id = rental.customer_id;
 select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
 from customer left join rental on customer.customer_id = rental.customer_id;
 select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
 from customer right join rental on customer.customer_id = rental.customer_id;
 select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
 from customer left join rental on customer.customer_id=rental.customer_id
 union
 select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
 from customer right join rental on customer.customer_id = rental.customer_id;
 select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
 from customer join rental on customer.customer_id=rental.customer_id
 where rental.return_date is null;
 select count(film_id) as number_of_films, release_year as premiere_year, min(length) as min_duration, 
 max(length) as max_duration, avg(replacement_cost) as average_cost
 from film group by release_year;
 select release_year, title, length from film where length > 80;
 select count(film_id), release_year from film group by release_year having release_year between 2006 and 2022;