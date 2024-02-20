/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
select first_name, last_name, address as street_address from staff s inner join address a on s.address_id = a.address_id order by last_name;
