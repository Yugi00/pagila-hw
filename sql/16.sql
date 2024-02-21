/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */
select f.title, sum(p.amount) as profit
from film as f
join inventory as i on i.film_id = f.film_id
join rental as r on r.inventory_id = i.inventory_id
join payment as p on p.rental_id = r.rental_id
group by f.title
order by sum(p.amount) desc;
