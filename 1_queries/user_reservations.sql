/* When a user is logged in, they will have an option to view all of their reservations. This page will show details about a reservation and details about the property associated with the reservation.

Show all reservations for a user.

Select all columns from the reservations table, all columns from the properties table, and the average rating of the property.
The reservations will be for a single user, so use 1 for the user_id.
Order the results from the earliest start_date to the most recent start_date.
These will end up being filtered by either "Upcoming Reservations" or "Past Reservations", so only get reservations where the end_date is in the past.
Use now()::date to get today's date.
Limit the results to 10.
Expected Result:

We're only showing the id, title, start_date, and cost_per_night to save space on the screen. As time progresses, so will the returned timestamp from the now function. As such, your output may return more rows than what is shown in the example.

 id  |      title      | cost_per_night | start_date |   average_rating   
-----+-----------------+----------------+------------+--------------------
 931 | Apple barn      |          79787 | 2014-05-17 | 4.1666666666666667
 209 | Piano principle |          16669 | 2014-08-17 | 3.7777777777777778
 994 | Bow forest      |          13562 | 2015-07-30 | 4.2727272727272727
 218 | Down observe    |          36117 | 2016-05-11 | 4.2857142857142857
 129 | Like arrow      |          92451 | 2016-07-08 | 4.1666666666666667
 276 | You weight      |          11459 | 2017-07-01 | 3.8333333333333333
(6 rows) */

SELECT properties.id, title, cost_per_night, reservations.start_date AS start_date, AVG(property_reviews.rating) AS average_rating
FROM properties
JOIN property_reviews ON property_reviews.property_id = properties.id
JOIN reservations ON reservations.property_id = properties.id
JOIN users ON users.id = reservations.guest_id
WHERE users.id = 1
GROUP BY reservations.start_date, properties.id
ORDER BY start_date ASC;