/*
 * For each film, show the customer who most recently rented it.
 *
 * HINT:
 * Use the first_value function.
 * The window will include both PARTITION BY and ORDER BY
 */

select distinct title, first_value(customer_id) over w as customer_id, first_value(first_name || ' ' || last_name) over w as customer_name from film join inventory using (film_id) join rental using (inventory_id) join customer using (customer_id) window w as (partition by film_id order by rental_date desc) order by title;
