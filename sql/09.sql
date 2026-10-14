/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */


select first_name, last_name, sum(amount) as sum from staff join payment using (staff_id) where payment_date >= '2020-01-01' and payment_date < '2020-02-01' group by staff_id, first_name, last_name order by last_name desc

