/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */


 select title, sum(amount) as profit from film join inventory using (film_id) join rental using (inventory_id) join payment using (rental_id) group by title order by profit desc;

