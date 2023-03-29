#   Author one or more SQL queries (SELECT statements) to demonstrate proper functionality.
#	SELECT data from at least 3 tables (two dimensions; plus the fact table).
#	Perform some type of aggregation (e.g., SUM, COUNT, AVERAGE).  This, of course, necessitates some form of grouping operation (e.g., GROUP BY <customer.last_name>).


USE airbnb;

# Query 1
# Find the average price of an AirBNB Listing by a superhost by Country 
SELECT AVG(price)
FROM listings 
LEFT JOIN hosts 
ON listings.host_id = hosts.host_id
WHERE is_superhost = 1;

# Query 2
# What is the name of the host with the highest listing price? 
# What is the inflation rate of the country where this listing is located?

SELECT listings.price, hosts.name, countries.inflation
FROM listings
LEFT JOIN hosts
ON listings.host_id = hosts.host_id
LEFT JOIN countries
ON listings.country_code = countries.country_code
ORDER BY price DESC limit 1;








