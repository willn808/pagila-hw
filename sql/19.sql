/*
 * For each payment, show the customer's total amount paid overall.
 *
 * HINT:
 * Use a window function with a PARTITION BY (but no ORDER BY).
 */


select customer_id, first_name , last_name, payment_id, amount, sum(amount) over (partition by customer_id) as customer_total from customer join payment using (customer_id) order by customer_id, payment_id;
