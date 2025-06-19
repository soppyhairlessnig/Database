--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T1-pat-schema.sql

--Student ID: 34536930
--Student Name: Hammad Tariq

/* Comments for your marker:
*/

-- Task 1 Add Create table statements for the Missing TABLES below.
-- Ensure all column comments, and constraints (other than FK's) are included.
-- FK constraints are to be added at the end of this script

-- official table

CREATE TABLE official (
  off_id NUMBER PRIMARY KEY,
  off_given VARCHAR2(30),
  off_family VARCHAR2(30),
  cr_ioc_code CHAR(3),
  off_cdm NUMBER,
  CONSTRAINT chk_ioc_code CHECK (LENGTH(cr_ioc_code) = 3)
);

COMMENT ON TABLE official IS 'Table storing details of officials, including name, country code, and Chef De Mission reference';
COMMENT ON COLUMN official.off_id IS 'Identifier for an official';
COMMENT ON COLUMN official.off_given IS 'Given name for the official';
COMMENT ON COLUMN official.off_family IS 'Family name for the official';
COMMENT ON COLUMN official.cr_ioc_code IS 'IOC country code for the official';
COMMENT ON COLUMN official.off_cdm IS 'Identifier for Chef De Mission for the official';

-- vehicle table

CREATE TABLE vehicle (
  veh_vin CHAR(17) PRIMARY KEY,
  veh_rego CHAR(7),
  veh_year DATE,
  veh_curr_odo NUMBER(6),
  veh_nopassengers NUMBER(2),
  vm_model_id NUMBER(4)
);

COMMENT ON TABLE vehicle IS 'Table storing details of each vehicle, including VIN, registration, model, and capacity';
COMMENT ON COLUMN vehicle.veh_vin IS 'Identifier for vehicle';
COMMENT ON COLUMN vehicle.veh_rego IS 'Registration plate of vehicle';
COMMENT ON COLUMN vehicle.veh_year IS 'Year of manufacture of vehicle';
COMMENT ON COLUMN vehicle.veh_curr_odo IS 'Current odometer reading of vehicle';
COMMENT ON COLUMN vehicle.veh_nopassengers IS 'Number of passengers vehicle can seat';
COMMENT ON COLUMN vehicle.vm_model_id IS 'Identifier for vehicle_model';

-- trip table

CREATE TABLE trip (
  trip_id NUMBER PRIMARY KEY,
  trip_nopassengers NUMBER,
  trip_int_pickupdt DATE,
  trip_act_pickupdt DATE,
  trip_int_dropoffdt DATE,
  trip_act_dropoffdt DATE,
  veh_vin CHAR(17),
  driver_id NUMBER,
  pickup_locn_id NUMBER,
  dropoff_locn_id NUMBER,
  lang_iso_code CHAR(2),
  off_id NUMBER,
  CONSTRAINT chk_trip_nopassengers CHECK (trip_nopassengers > 0)
);

COMMENT ON TABLE trip IS 'Table storing trip details, including vehicle, driver, pickup/dropoff times, and passenger details';
COMMENT ON COLUMN trip.trip_id IS 'Identifier for a trip';
COMMENT ON COLUMN trip.trip_nopassengers IS 'Number of passengers for the trip';
COMMENT ON COLUMN trip.trip_int_pickupdt IS 'Intended pickup date and time for the trip';
COMMENT ON COLUMN trip.trip_act_pickupdt IS 'Actual pickup date and time for the trip';
COMMENT ON COLUMN trip.trip_int_dropoffdt IS 'Intended drop-off date and time for the trip';
COMMENT ON COLUMN trip.trip_act_dropoffdt IS 'Actual drop-off date and time for the trip';
COMMENT ON COLUMN trip.veh_vin IS 'Identifier for a vehicle';
COMMENT ON COLUMN trip.driver_id IS 'Identifier for a driver';
COMMENT ON COLUMN trip.pickup_locn_id IS 'Identifier for the pick-up location';
COMMENT ON COLUMN trip.dropoff_locn_id IS 'Identifier for the drop-off location';
COMMENT ON COLUMN trip.lang_iso_code IS 'ISO639-1 two-character language codes';
COMMENT ON COLUMN trip.off_id IS 'Identifier for an official';

-- Add all missing FK Constraints below here

ALTER TABLE official
    ADD CONSTRAINT fk_official_ioc FOREIGN KEY (
        cr_ioc_code
    )
        REFERENCES country_region (
            cr_ioc_code
        );

ALTER TABLE official
    ADD CONSTRAINT fk_official_cdm FOREIGN KEY (
        off_cdm
    )
        REFERENCES official (
            off_id
        );

ALTER TABLE vehicle
    ADD CONSTRAINT fk_vehicle_model FOREIGN KEY (
        vm_model_id
    )
        REFERENCES vehicle_model (
            vm_model_id
        );

ALTER TABLE trip
    ADD CONSTRAINT fk_trip_vehicle FOREIGN KEY (
        veh_vin
    )
        REFERENCES vehicle (
            veh_vin
        );

ALTER TABLE trip
    ADD CONSTRAINT fk_trip_driver FOREIGN KEY (
        driver_id
    )
        REFERENCES driver (
            driver_id
        );

ALTER TABLE trip
    ADD CONSTRAINT fk_trip_pickup_loc FOREIGN KEY (
        pickup_locn_id
    )
        REFERENCES location (
            locn_id
        );

ALTER TABLE trip
    ADD CONSTRAINT fk_trip_dropoff_loc FOREIGN KEY (
        dropoff_locn_id
    )
        REFERENCES location (
            locn_id
        );

ALTER TABLE trip
    ADD CONSTRAINT fk_trip_lang FOREIGN KEY (
        lang_iso_code
    )
        REFERENCES language (
            lang_iso_code
        );
