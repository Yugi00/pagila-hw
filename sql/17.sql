/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
select c.country, sum(p.amount) as profit
from country as c
join city as cy on cy.country_id = c.country_id
join address as a on a.city_id = cy.city_id
join customer as cr on cr.address_id = a.address_id
join rental as r on r.customer_id = cr.customer_id
join payment as p on p.rental_id = r.rental_id
group by c.country
order by country;
