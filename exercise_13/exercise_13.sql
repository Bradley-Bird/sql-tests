-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country.country, AVG(payment.amount) AS avg
from country
LEFT JOIN city on country.country_id = city.country_id
LEFT JOIN address on city.city_id = address.city_id
LEFT JOIN customer on address.address_id = customer.address_id
LEFT JOIN payment on customer.customer_id = payment.customer_id
WHERE payment.amount IS NOT NULL
GROUP BY country.country
ORDER BY avg DESC
LIMIT 10 