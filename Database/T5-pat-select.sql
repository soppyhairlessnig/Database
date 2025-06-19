/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-pat-select.sql

--Student ID: 34536930
--Student Name: Hammad Tariq


/* Comments for your marker:


*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT 
    location.locn_id AS "LOCN_ID",
    location.locn_name AS "LOCN_NAME",
    location.locn_address AS "LOCN_ADDRESS",
    location_type.locntype_description AS "LOCTYPE_DESCRIPTION",
    COUNT(trip.trip_id) AS "PICKUP/DROPOFF_COUNT"
FROM 
    location
JOIN 
    trip ON (location.locn_id = trip.pickup_locn_id OR location.locn_id = trip.dropoff_locn_id)
JOIN 
    location_type ON location.locntype_id = location_type.locntype_id
WHERE 
    trip.trip_act_dropoffdt IS NOT NULL
GROUP BY 
    location.locn_id, location.locn_name, location.locn_address, location_type.locntype_description
ORDER BY 
    COUNT(trip.trip_id) DESC, location.locn_id;




/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT 
    driver.driver_id AS "DRIVER_ID",
    driver_given || ' ' || driver_family AS "FULLNAME",
    CASE 
        WHEN COUNT(trip.trip_id) = 0 THEN 'No Trips'
        ELSE TO_CHAR(SUM((trip_act_dropoffdt - trip_act_pickupdt) * 24 * 45.42), '$9999.99')
    END AS "TOTAL_PERIOD_PAYMENT"
FROM 
    driver
LEFT JOIN 
    trip ON driver.driver_id = trip.driver_id
AND 
    trip.trip_act_pickupdt BETWEEN TO_DATE('2024-08-01', 'YYYY-MM-DD') AND TO_DATE('2024-08-07', 'YYYY-MM-DD')
GROUP BY 
    driver.driver_id, driver_given, driver_family
ORDER BY 
    driver.driver_id;


