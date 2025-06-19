// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-pat-mongo.mongodb.js

// Student ID:
// Student Name:

//Comments for your marker:

// ===================================================================================
// Do not add new comments to this playground
// OR modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("htar0006");

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection
db.DriversTrips.drop();

// Create collection and insert documents
db.DriversTrips.insertMany([
    {"driver_id":2001,"driver_name":"Pierre Martin","licence_num":"120501123456","suspended":"N","trip_info":{"trip_id":8,"veh_vin":"1HGCM82633A007581","pickup_locn_id":104,"pickup_locn_name":"Eiffel Tower Stadium","dropoff_locn_id":105,"dropoff_locn_name":"South Paris Arena","intended_dates":{"pickup":"2024-07-28 09:00","dropoff":"2024-07-28 10:15"},"actual_dates":{"pickup":"2024-07-28 09:10","dropoff":"2024-07-28 10:20"}}},
    {"driver_id":2001,"driver_name":"Pierre Martin","licence_num":"120501123456","suspended":"N","trip_info":{"trip_id":2,"veh_vin":"1HGCM82633A007581","pickup_locn_id":103,"pickup_locn_name":"Champ de Mars Arena","dropoff_locn_id":102,"dropoff_locn_name":"Bercy Arena","intended_dates":{"pickup":"2024-07-24 15:00","dropoff":"2024-07-24 16:00"},"actual_dates":{"pickup":"2024-07-24 15:10","dropoff":"2024-07-24 16:05"}}},
    {"driver_id":2001,"driver_name":"Pierre Martin","licence_num":"120501123456","suspended":"N","trip_info":{"trip_id":6,"veh_vin":"1HGCM82633A005541","pickup_locn_id":102,"pickup_locn_name":"Bercy Arena","dropoff_locn_id":104,"dropoff_locn_name":"Eiffel Tower Stadium","intended_dates":{"pickup":"2024-07-26 07:00","dropoff":"2024-07-26 08:30"},"actual_dates":{"pickup":"2024-07-26 07:20","dropoff":"2024-07-26 08:45"}}},
    {"driver_id":2001,"driver_name":"Pierre Martin","licence_num":"120501123456","suspended":"N","trip_info":{"trip_id":17,"veh_vin":"1HGCM82633A004251","pickup_locn_id":103,"pickup_locn_name":"Champ de Mars Arena","dropoff_locn_id":104,"dropoff_locn_name":"Eiffel Tower Stadium","intended_dates":{"pickup":"2024-07-30 13:00","dropoff":"2024-07-30 14:45"},"actual_dates":{"pickup":"2024-07-30 13:10","dropoff":"2024-07-30 14:55"}}},
    {"driver_id":2001,"driver_name":"Pierre Martin","licence_num":"120501123456","suspended":"N","trip_info":{"trip_id":10,"veh_vin":"1HGCM82633A004251","pickup_locn_id":102,"pickup_locn_name":"Bercy Arena","dropoff_locn_id":104,"dropoff_locn_name":"Eiffel Tower Stadium","intended_dates":{"pickup":"2024-07-30 14:00","dropoff":"2024-07-30 15:45"},"actual_dates":{"pickup":"2024-07-30 14:10","dropoff":"2024-07-30 15:50"}}},
    {"driver_id":2001,"driver_name":"Pierre Martin","licence_num":"120501123456","suspended":"N","trip_info":{"trip_id":15,"veh_vin":"1HGCM82633A007581","pickup_locn_id":101,"pickup_locn_name":"Bordeaux Stadium","dropoff_locn_id":103,"dropoff_locn_name":"Champ de Mars Arena","intended_dates":{"pickup":"2024-07-28 11:00","dropoff":"2024-07-28 12:00"},"actual_dates":{"pickup":"2024-07-28 11:10","dropoff":"2024-07-28 12:10"}}},
    {"driver_id":2014,"driver_name":"Claire Robert","licence_num":"55052a543210","suspended":"N","trip_info":{"trip_id":100,"veh_vin":"1C4SDHCT9FC614231","pickup_locn_id":113,"pickup_locn_name":"Olympic and Paralympic village","dropoff_locn_id":111,"dropoff_locn_name":"Porte de La Chapelle Arena","intended_dates":{"pickup":"2024-07-30 12:30","dropoff":"2024-07-30 14:00"},"actual_dates":{"pickup":"2024-07-30 12:30","dropoff":"2024-07-30 14:15"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":12,"veh_vin":"1HGCM82633A006279","pickup_locn_id":104,"pickup_locn_name":"Eiffel Tower Stadium","dropoff_locn_id":106,"dropoff_locn_name":"La Beaujoire Stadium","intended_dates":{"pickup":"2024-07-25 10:30","dropoff":"2024-07-25 11:30"},"actual_dates":{"pickup":"2024-07-25 10:45","dropoff":"2024-07-25 11:45"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":13,"veh_vin":"1HGCM82633A005541","pickup_locn_id":102,"pickup_locn_name":"Bercy Arena","dropoff_locn_id":105,"dropoff_locn_name":"South Paris Arena","intended_dates":{"pickup":"2024-07-26 08:00","dropoff":"2024-07-26 09:15"},"actual_dates":{"pickup":"2024-07-26 08:10","dropoff":"2024-07-26 09:25"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":14,"veh_vin":"1HGCM82633A008763","pickup_locn_id":104,"pickup_locn_name":"Eiffel Tower Stadium","dropoff_locn_id":106,"dropoff_locn_name":"La Beaujoire Stadium","intended_dates":{"pickup":"2024-07-27 14:00","dropoff":"2024-07-27 15:15"},"actual_dates":{"pickup":"2024-07-27 14:05","dropoff":"2024-07-27 15:20"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":16,"veh_vin":"1HGCM82633A005541","pickup_locn_id":105,"pickup_locn_name":"South Paris Arena","dropoff_locn_id":102,"dropoff_locn_name":"Bercy Arena","intended_dates":{"pickup":"2024-07-29 09:30","dropoff":"2024-07-29 10:45"},"actual_dates":{"pickup":"2024-07-29 09:35","dropoff":"2024-07-29 10:50"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":18,"veh_vin":"1HGCM82633A008592","pickup_locn_id":101,"pickup_locn_name":"Bordeaux Stadium","dropoff_locn_id":102,"dropoff_locn_name":"Bercy Arena","intended_dates":{"pickup":"2024-08-01 08:30","dropoff":"2024-08-01 09:45"},"actual_dates":{"pickup":"2024-08-01 08:35","dropoff":"2024-08-01 09:55"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":19,"veh_vin":"1HGCM82633A006279","pickup_locn_id":104,"pickup_locn_name":"Eiffel Tower Stadium","dropoff_locn_id":105,"dropoff_locn_name":"South Paris Arena","intended_dates":{"pickup":"2024-08-02 09:00","dropoff":"2024-08-02 10:00"},"actual_dates":{"pickup":"2024-08-02 09:10","dropoff":"2024-08-02 10:10"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":20,"veh_vin":"1HGCM82633A005541","pickup_locn_id":101,"pickup_locn_name":"Bordeaux Stadium","dropoff_locn_id":103,"dropoff_locn_name":"Champ de Mars Arena","intended_dates":{"pickup":"2024-08-03 11:00","dropoff":"2024-08-03 12:15"},"actual_dates":{"pickup":"2024-08-03 11:05","dropoff":"2024-08-03 12:20"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":11,"veh_vin":"1HGCM82633A008592","pickup_locn_id":103,"pickup_locn_name":"Champ de Mars Arena","dropoff_locn_id":105,"dropoff_locn_name":"South Paris Arena","intended_dates":{"pickup":"2024-08-01 09:00","dropoff":"2024-08-01 10:00"},"actual_dates":{"pickup":"2024-08-01 09:05","dropoff":"2024-08-01 10:10"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":9,"veh_vin":"1HGCM82633A005541","pickup_locn_id":106,"pickup_locn_name":"La Beaujoire Stadium","dropoff_locn_id":101,"dropoff_locn_name":"Bordeaux Stadium","intended_dates":{"pickup":"2024-07-29 10:00","dropoff":"2024-07-29 11:30"},"actual_dates":{"pickup":"2024-07-29 10:05","dropoff":"2024-07-29 11:45"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":7,"veh_vin":"1HGCM82633A008763","pickup_locn_id":103,"pickup_locn_name":"Champ de Mars Arena","dropoff_locn_id":106,"dropoff_locn_name":"La Beaujoire Stadium","intended_dates":{"pickup":"2024-07-27 15:00","dropoff":"2024-07-27 16:30"},"actual_dates":{"pickup":"2024-07-27 15:10","dropoff":"2024-07-27 16:40"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":5,"veh_vin":"1HGCM82633A006279","pickup_locn_id":101,"pickup_locn_name":"Bordeaux Stadium","dropoff_locn_id":103,"dropoff_locn_name":"Champ de Mars Arena","intended_dates":{"pickup":"2024-07-25 11:00","dropoff":"2024-07-25 12:00"},"actual_dates":{"pickup":"2024-07-25 11:15","dropoff":"2024-07-25 12:10"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":4,"veh_vin":"1HGCM82633A009211","pickup_locn_id":105,"pickup_locn_name":"South Paris Arena","dropoff_locn_id":106,"dropoff_locn_name":"La Beaujoire Stadium","intended_dates":{"pickup":"2024-07-23 08:00","dropoff":"2024-07-23 09:30"},"actual_dates":{"pickup":"2024-07-23 08:05","dropoff":"2024-07-23 09:40"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":3,"veh_vin":"1HGCM82633A002491","pickup_locn_id":105,"pickup_locn_name":"South Paris Arena","dropoff_locn_id":106,"dropoff_locn_name":"La Beaujoire Stadium","intended_dates":{"pickup":"2024-07-23 08:00","dropoff":"2024-07-23 09:30"},"actual_dates":{"pickup":"2024-07-23 08:10","dropoff":"2024-07-23 09:45"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":21,"veh_vin":"1HGCM82633A008763","pickup_locn_id":105,"pickup_locn_name":"South Paris Arena","dropoff_locn_id":106,"dropoff_locn_name":"La Beaujoire Stadium","intended_dates":{"pickup":"2024-08-04 14:00","dropoff":"2024-08-04 15:30"},"actual_dates":{"pickup":"2024-08-04 14:10","dropoff":"2024-08-04 15:45"}}},
    {"driver_id":2015,"driver_name":"Nathalie Renaud","licence_num":"660725432109","suspended":"N","trip_info":{"trip_id":1,"veh_vin":"1HGCM82633A005421","pickup_locn_id":101,"pickup_locn_name":"Bordeaux Stadium","dropoff_locn_id":102,"dropoff_locn_name":"Bercy Arena","intended_dates":{"pickup":"2024-07-24 10:00","dropoff":"2024-07-24 11:00"},"actual_dates":{"pickup":"2024-07-24 10:15","dropoff":"2024-07-24 11:15"}}}
]);


// List all documents you added
db.DriversTrips.find();

// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer
db.DriversTrips.find(
    { "trips_info.drop off.location_name": { $in: ["Champions Park", "Porte de La Chapelle Arena"] } },
    { "_id": 0, "name": 1, "licence_num": 1 }
);



// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Show document before the new trip is added and the driver is suspended
db.DriversTrips.find({ "_id": 2004 });


// Add new trip and set the driver to suspended
db.DriversTrips.find({ "_id": 2004 });

// Add new trip and set the driver to suspended
db.DriversTrips.updateOne(
    { "_id": 2004 },
    {
        $push: {
            "trips_info": {
                "trip_id": 999,  // Example trip ID
                "veh_vin": "12345EXAMPLEVIN",
                "pick-up": {
                    "location_id": 117,
                    "location_name": "Tuileries Garden",
                    "intended_datetime": "10/08/2024 10:00",
                    "actual_datetime": "10/08/2024 10:05"
                },
                "drop off": {
                    "location_id": 118,
                    "location_name": "Sainte-Chapelle",
                    "intended_datetime": "10/08/2024 10:30",
                    "actual_datetime": "10/08/2024 10:35"
                }
            }
        },
        $set: { "suspended": "Y" }
    }
);

// Illustrate/confirm changes made
db.DriversTrips.find({ "_id": 2004 });

