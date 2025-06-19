/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-pat-json.sql

--Student ID: 34536930
--Student Name: Hammad Tariq


/* Comments for your marker:

Had to use this method, as It was showing duplicates in the output.

*/

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE 
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT JSON_OBJECT(
           'driver_id' VALUE d.driver_id,
           'driver_name' VALUE d.driver_given || ' ' || d.driver_family,
           'licence_num' VALUE d.driver_licence,
           'suspended' VALUE d.driver_suspended,
           'trip_info' VALUE JSON_OBJECT(
               'trip_id' VALUE t.trip_id,
               'veh_vin' VALUE t.veh_vin,
               'pickup_locn_id' VALUE t.pickup_locn_id,
               'pickup_locn_name' VALUE (SELECT locn_name FROM location WHERE locn_id = t.pickup_locn_id),
               'dropoff_locn_id' VALUE t.dropoff_locn_id,
               'dropoff_locn_name' VALUE (SELECT locn_name FROM location WHERE locn_id = t.dropoff_locn_id),
               'intended_dates' VALUE JSON_OBJECT(
                   'pickup' VALUE TO_CHAR(t.trip_int_pickupdt, 'YYYY-MM-DD HH24:MI'),
                   'dropoff' VALUE TO_CHAR(t.trip_int_dropoffdt, 'YYYY-MM-DD HH24:MI')
               ),
               'actual_dates' VALUE JSON_OBJECT(
                   'pickup' VALUE TO_CHAR(t.trip_act_pickupdt, 'YYYY-MM-DD HH24:MI'),
                   'dropoff' VALUE TO_CHAR(t.trip_act_dropoffdt, 'YYYY-MM-DD HH24:MI')
               )
           )
       ) AS DRIVER_TRIP_JSON
FROM driver d
JOIN trip t ON d.driver_id = t.driver_id
WHERE t.trip_act_dropoffdt IS NOT NULL;
