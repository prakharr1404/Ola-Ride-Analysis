create database Ola;
Use Ola;
Create View Successful_Bookings as
Select * from bookings Where Booking_Status='Success';
Select * from Successful_Bookings;

Create view ride_distance_for_each_vehicle as
Select Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type;
Select * from ride_distance_for_each_vehicle;

Create view cancelled_rides_by_customers as
Select Count(*) from bookings Where Booking_Status='Canceled by Customer';
Select * from cancelled_rides_by_customers;

Create View Top_5_Customers as
Select Customer_ID, count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides DESC LIMIT 5;
Select * from Top_5_Customers; 

Create view Rides_Canceled_By_Drivers_P_C_Issues as
Select count(*) from bookings 
where Canceled_Rides_By_Driver = 'Personal & Car related issue';
Select * from Rides_Canceled_By_Drivers_P_C_Issues;

Create view Max_Min_Driver_Rating as
Select max(Driver_Ratings) as max_rating,
Min(Driver_Ratings) as min_rating 
FROM bookings where Vehicle_Type='Prime Sedan';

Create view UPI_Payment as
Select * from bookings
where Payment_Method='UPI';
Select * from UPI_Payment;

Create view AVG_Customer_Rating as
Select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
from bookings 
group by Vehicle_Type;
Select * from AVG_Customer_Rating;

create view total_successful_ride_value as
Select sum(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status='Success';
Select * from total_successful_ride_value;

Create view Incomplete_Rides_Reason as
Select Booking_ID, Incomplete_Rides_Reason 
from bookings 
where Incomplete_Rides='Yes';
select * from Incomplete_Rides_Reason;