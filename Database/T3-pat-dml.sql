/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T3-pat-dml.sql

--Student ID: 34536930
--Student Name: HAmmad Tariq

/* Comments for your marker:




/*(a)*/

DROP SEQUENCE seq_official_id;
DROP SEQUENCE seq_trip_id;

CREATE SEQUENCE seq_official_id
  START WITH 100
  INCREMENT BY 10;

CREATE SEQUENCE seq_trip_id
  START WITH 100
  INCREMENT BY 10;



/*(b)*/


INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (
    seq_official_id.NEXTVAL, 
    'Franklin', 
    'Gateau', 
    'VIN', 
    seq_official_id.CURRVAL 
);


INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES (
    '1C4SDHCT9FC614231', 
    'LNQ6459',           
    TO_DATE('2019', 'YYYY'), 
    61000,               
    6,                   
    7                    
);

/*(c)*/

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    seq_trip_id.NEXTVAL, 
    6, 
    TO_DATE('2024-07-30 12:30', 'YYYY-MM-DD HH24:MI'), 
    TO_DATE('2024-07-30 12:30', 'YYYY-MM-DD HH24:MI'), 
    TO_DATE('2024-07-30 14:00', 'YYYY-MM-DD HH24:MI'), 
    NULL, 
    '1C4SDHCT9FC614231',
    2014, 
    113, 
    111, 
    'en', 
    seq_official_id.CURRVAL 
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    seq_trip_id.NEXTVAL, 
    6, 
    TO_DATE('2024-07-30 20:00', 'YYYY-MM-DD HH24:MI'), 
    TO_DATE('2024-07-30 20:00', 'YYYY-MM-DD HH24:MI'), 
    TO_DATE('2024-07-30 21:15', 'YYYY-MM-DD HH24:MI'), 
    NULL, 
    '1C4SDHCT9FC614231', 
    2014, 
    111, 
    113, 
    'en', 
    seq_official_id.CURRVAL 
);

COMMIT;

/*(d)*/

UPDATE trip
SET trip_act_pickupdt = TO_DATE('2024-07-30 12:30', 'YYYY-MM-DD HH24:MI'),
    trip_act_dropoffdt = TO_DATE('2024-07-30 14:15', 'YYYY-MM-DD HH24:MI')
WHERE trip_id = (
    SELECT trip_id FROM (
        SELECT trip_id 
        FROM trip
        WHERE off_id = (
            SELECT off_id 
            FROM (
                SELECT off_id 
                FROM official 
                WHERE off_given = 'Franklin' 
                  AND off_family = 'Gateau'
            ) WHERE ROWNUM = 1
        )
        AND trip_int_pickupdt = TO_DATE('2024-07-30 12:30', 'YYYY-MM-DD HH24:MI')
    ) WHERE ROWNUM = 1
);


DELETE FROM trip
WHERE driver_id = 2014
  AND TO_CHAR(trip_int_pickupdt, 'YYYY-MM-DD') = '2024-07-30'
  AND trip_int_pickupdt > TO_DATE('2024-07-30 17:00', 'YYYY-MM-DD HH24:MI');

COMMIT;