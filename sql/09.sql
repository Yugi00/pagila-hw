/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select s.first_name, s.last_name, sum(p.amount) as sum
from payment as p
join staff as s
on p.staff_id = s.staff_id
where cast(payment_date as varchar) like '2020-01%'
group by s.first_name, s.last_name;
