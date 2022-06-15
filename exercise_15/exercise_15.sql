-- the total run time of all inventory items if they were all played back to back
SELECT SUM(film.length) AS sum
from
inventory 
LEFT JOIN film on inventory.film_id = film.film_id