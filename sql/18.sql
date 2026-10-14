/*
 * Rank actors by how many films they appear in (most films first). Ties share a rank.
 *
 * HINT:
 * Join actor with film_actor.
 * Then use a window function with an appropriate ORDER BY clause (no PARTITION BY).
 */

select actor_id, first_name, last_name, count(*) as films, rank() over (order by count(*) desc) as rnk from actor join film_actor using (actor_id) group by actor_id, first_name, last_name order by rnk, actor_id;
