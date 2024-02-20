/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
select f.title as "title", f.film_id, count(fa.actor_id) as "actor_count"
 from film as f
 join film_actor as fa
 on f.film_id = fa.film_id
 group by f.film_id
 order by actor_count, title;
