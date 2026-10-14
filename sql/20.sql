/*
 * For each film, show how many actors appear in it.
 *
 * HINT:
 * Join film and film_actor.
 * Use a window function that does NOT need an ORDER BY clause inside OVER.
 */

select title, count(*) over (partition by (film_id)) as actor_count from film join film_actor using (film_id) order by actor_count desc, film_id;
