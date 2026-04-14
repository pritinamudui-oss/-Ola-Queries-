
create `ola_dataset - july`;
use 'ola_dataset - july';
select Payment_Method, count
use `Ola_dataset - july`;
                   QUERIES QUESTIONS
Retrieve all sucessfull bookings
select * from `ola_dataset - july` where Booking_Status = 'Success';

Find the average ride distance for each vehicle type
select AVG(Ride_Distance) as Avg_Distance from `ola_dataset - july` group by Vehicle_Type;

Get the total number of cancelled rides by customer
select count(*) as Canelled_Rides from `Ola_dataset - july` where Booking_Status = 'Canceled by Customer';

List the top 5 customers who booked the highest number of rides
select Customer_ID, count(*) as Total_Rides from `Ola_dataset - july` group by Customer_ID Order by Total_Rides DESC LIMIT 5;

Get the number of rides cancelled by drivers due to personal and car related issues
select count(*) as Rides_Canceled from `Ola_dataset - july` where Canceled_Rides_by_Driver = 'Personal & Car related issue';

Find the maximum and minimum driver ratings for Prime Sedan bookings
select MAX(Driver_Ratings) from `Ola_dataset - july` where Vehicle_Type = 'Prime Sedan';
select MIN(Driver_Ratings) from `Ola_dataset - july` where Vehicle_Type = 'Prime Sedan';

Retrieve all rides where payment was done using UPI
select Payment_Method, count(*) as Total_Rides from `Ola_dataset - july` where Payment_Method = 'UPI' group by 'Payment_Method';
select * from `Ola_dataset - july`;
Find the average customer rating per vehicle type
select Vehicle_Type, avg(Customer_Rating) as Avg_Rating from `Ola_dataset - july` group by Vehicle_Type;

calculate the total booking value of rides completed sucessfully
select sum(Booking_Value)as Total_Booking _Value from `OLa_dataset - july` where Booking_Status = 'Success';  (DO THIS AGAIN ITS WRONG)


List all incomplete ride along with the reason
select incomplete_Rides_Reason, count(Incomplete_Rides) as Total_Incomplete_Ride from `Ola_dataset -july` where Booking_Status = 'Canceled by Customer' or Booking_Status = 'Canceled by Driver' Group by Incomplete_Ride_Reason;
