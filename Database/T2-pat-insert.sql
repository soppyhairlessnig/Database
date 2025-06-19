/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-pat-insert.sql

--Student ID: 34536930
--Student Name: Hammad

/* Comments for your marker:




*/

--------------------------------------
--INSERT INTO official
--------------------------------------

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (1, 'Justin', 'Bieber', 'CAN', NULL);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (2, 'Dwayne', 'Rock', 'USA', 1);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (3, 'Dua', 'lipa', 'GBR', NULL);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (4, 'Billie', 'Eilish', 'AUS', 3);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (5, 'Travis', 'Scott', 'FRA', 1);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (6, 'Bob', 'Builder', 'NZL', 2);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (7, 'Emma', 'Watson', 'GBR', NULL);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (8, 'Kanye', 'East', 'KEN', 6);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (9, 'Kylie', 'Banter', 'MEX', NULL);

INSERT INTO official (off_id, off_given, off_family, cr_ioc_code, off_cdm)
VALUES (10, 'Rick', 'Astley', 'PAK', 4);


--------------------------------------
--INSERT INTO vehicle
--------------------------------------

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A005421', 'AMP3459', TO_DATE('2014', 'YYYY'), 120000, 4, 1);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A007581', 'BQM6542', TO_DATE('2018', 'YYYY'), 80000, 6, 2);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A002491', 'LHI2401', TO_DATE('2019', 'YYYY'), 40000, 5, 3);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A009211', 'NOP3549', TO_DATE('2019', 'YYYY'), 50000, 4, 1);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A006279', 'NIC5467', TO_DATE('2017', 'YYYY'), 130000, 7, 2);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A005541', 'LRT4219', TO_DATE('2020', 'YYYY'), 60000, 5, 3);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A008763', 'SAM3452', TO_DATE('2018', 'YYYY'), 20000, 6, 1);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A009873', 'BXY8291', TO_DATE('2013', 'YYYY'), 150000, 4, 2);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A004251', 'VIM3199', TO_DATE('2023', 'YYYY'), 10000, 5, 3);

INSERT INTO vehicle (veh_vin, veh_rego, veh_year, veh_curr_odo, veh_nopassengers, vm_model_id)
VALUES ('1HGCM82633A008592', 'GHI2418', TO_DATE('2010', 'YYYY'), 180000, 8, 1);

--------------------------------------  
--INSERT INTO trip
--------------------------------------

-- Continue in similar format for remaining trip entries
INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (1, 4, TO_DATE('2024-07-24 10:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-24 10:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-24 11:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-24 11:15', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A005421', 2015, 101, 102, 'fr', 1);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (2, 5, TO_DATE('2024-07-24 15:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-24 15:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-24 16:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-24 16:05', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A007581', 2001, 103, 102, 'de', 2);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (3, 4, TO_DATE('2024-07-23 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-23 08:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-23 09:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-23 09:45', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A002491', 2015, 105, 106, 'fr', 3);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (4, 3, TO_DATE('2024-07-23 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-23 08:05', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-23 09:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-23 09:40', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A009211', 2015, 105, 106, 'fr', 4);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (5, 2, TO_DATE('2024-07-25 11:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-25 11:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-25 12:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-25 12:10', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A006279', 2015, 101, 103, 'fr', 5);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (6, 6, TO_DATE('2024-07-26 07:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-26 07:20', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-26 08:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-26 08:45', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A005541', 2001, 102, 104, 'de', 6);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (7, 4, TO_DATE('2024-07-27 15:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-27 15:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-27 16:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-27 16:40', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A008763', 2015, 103, 106, 'fr', 7);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (8, 5, TO_DATE('2024-07-28 09:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-28 09:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-28 10:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-28 10:20', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A007581', 2001, 104, 105, 'de', 8);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (9, 6, TO_DATE('2024-07-29 10:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-29 10:05', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-29 11:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-29 11:45', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A005541', 2015, 106, 101, 'fr', 9);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (10, 4, TO_DATE('2024-07-30 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-30 14:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-30 15:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-30 15:50', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A004251', 2001, 102, 104, 'de', 10);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (11, 3, TO_DATE('2024-08-01 09:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-01 09:05', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-01 10:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-01 10:10', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A008592', 2015, 103, 105, 'fr', 1);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (12, 3, TO_DATE('2024-07-25 10:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-25 10:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-25 11:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-25 11:45', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A006279', 2015, 104, 106, 'fr', 3);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (13, 5, TO_DATE('2024-07-26 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-26 08:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-26 09:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-26 09:25', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A005541', 2015, 102, 105, 'fr', 2);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (14, 3, TO_DATE('2024-07-27 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-27 14:05', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-27 15:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-27 15:20', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A008763', 2015, 104, 106, 'fr', 4);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (15, 4, TO_DATE('2024-07-28 11:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-28 11:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-28 12:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-28 12:10', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A007581', 2001, 101, 103, 'de', 5);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (16, 6, TO_DATE('2024-07-29 09:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-29 09:35', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-29 10:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-29 10:50', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A005541', 2015, 105, 102, 'fr', 9);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (17, 4, TO_DATE('2024-07-30 13:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-30 13:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-30 14:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-07-30 14:55', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A004251', 2001, 103, 104, 'de', 6);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (18, 3, TO_DATE('2024-08-01 08:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-01 08:35', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-01 09:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-01 09:55', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A008592', 2015, 101, 102, 'fr', 7);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (19, 2, TO_DATE('2024-08-02 09:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-02 09:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-02 10:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-02 10:10', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A006279', 2015, 104, 105, 'fr', 8);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (20, 5, TO_DATE('2024-08-03 11:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-03 11:05', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-03 12:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-03 12:20', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A005541', 2015, 101, 103, 'fr', 10);

INSERT INTO trip (trip_id, trip_nopassengers, trip_int_pickupdt, trip_act_pickupdt, trip_int_dropoffdt, trip_act_dropoffdt, veh_vin, driver_id, pickup_locn_id, dropoff_locn_id, lang_iso_code, off_id)
VALUES (21, 4, TO_DATE('2024-08-04 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-04 14:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-04 15:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-08-04 15:45', 'YYYY-MM-DD HH24:MI'), '1HGCM82633A008763', 2015, 105, 106, 'fr', 2);
