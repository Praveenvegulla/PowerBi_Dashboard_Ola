create database Ola;
use Ola;

#1. Reteive Sucessful bookings :
 Create View Successful_Bookings As
 SELECT * FROM booking
 where Booking_Status = 'Success';
 select * from Successful_Bookings;


#2. Find the average ride distance for each vehicle type:
 Create View ride_distance_for_each_vehicle As
 SELECT Vehicle_Type, AVG(Ride_Distance)
 as avg_distance FROM booking
 GROUP BY Vehicle_Type;
 Select * from ride_distance_for_each_vehicle;
 
 
 #3. Get the total number of canceled rides  by customers;
 Create View cancelled_riders_by_customers As
 SELECT COUNT(*) FROM booking
 WHERE Booking_Status = 'canceled by Customer';
 select * from cancelled_riders_by_customers;
 
 
 #4.
 create view Top_5_customers as
 select Customer_ID, count(Booking_ID) as total_rides
 from booking
 group by Customer_ID
 order by total_rides desc limit 5;
 select * from  Top_5_customers;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues: 
 create view cancelled_rides_by_drivers as
 select count(*) from booking 
 where Canceled_Rides_by_Driver = "Personal & Car related issue";
 select * from cancelled_rides_by_drivers;
 
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
  create view Max_min_ratings as
  select max(Driver_Ratings) as max , min(Driver_Ratings) as min
  from booking
  where Vehicle_Type = "Prime Sedan";
  select * from Max_min_ratings;
  
  
  #7.  Retrieve all rides where payment was made using UPI:
  create view Pay_Method as
  select * from booking
  where Payment_Method = "UPI";
  select * from Pay_Method;
  
  
  #8.  Find the average customer rating per vehicle type:
   create view Average_rating_per_vehicle as
   select Vehicle_Type, avg(Driver_Ratings) as Avg_rating
   from booking
   group by Vehicle_Type
   order by Avg_rating;
   select * from Average_rating_per_vehicle;
   
   
   #9.  Calculate the total booking value of rides completed successfully:
   create view Sucessful_bookings as
   select count(*) from booking
   where Booking_Status = "Success";
   select * from Sucessful_bookings;
   
   
   #10.  List all incomplete rides along with the reason:
   create view Incomplete_rides_reason as
   select Incomplete_Rides, Incomplete_Rides_Reason 
   from booking 
   where Incomplete_Rides = "Yes"
   order by Incomplete_Rides_Reason ;
   select * from Incomplete_rides_reason;