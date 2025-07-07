# OLA Ride Data Analysis

---

This project focuses on analyzing Ola ride data by integrating **SQL for data extraction**, **RapidMiner for machine learning**, and **Power BI for dashboard visualization**. The primary objective is to enhance **driver performance monitoring** and **optimize Estimated Time of Arrival (ETA) predictions**, thereby improving customer satisfaction and operational efficiency.

The workflow begins with structured SQL queries to extract and transform ride data, including metrics such as booking success, cancellations, ride distance, payment methods, and customer ratings. These outputs are fed into RapidMiner, where **Isolation Forest** is used for anomaly detection in driver behavior, and **Random Forest** and **Gradient Boosting** are used to predict ETA and ride duration based on historical and contextual ride features. The final results are visualized using Power BI for dynamic decision-making.

---

## Steps Involved:

### 1. Data Extraction (SQL)

* Created views for key metrics: successful bookings, top 5 customers, ride distances, payment breakdowns, and ratings.
* Filtered and grouped data using SQL to prepare clean, queryable datasets.

### 2. Data Analysis & Modeling (RapidMiner)

* **Anomaly Detection** using Isolation Forest to identify drivers with unusual patterns (e.g., frequent cancellations or low ratings).
* **Predictive Modeling**:

  * **Random Forest** and **Gradient Boosting** applied to predict:

    * Ride duration
    * ETA
  * Features included ride distance, time of day, traffic patterns, and vehicle type.

### 3. Dashboard & Visualization (Power BI)

* Visualized cancellation trends, ride distribution, payment methods, and top customer metrics.
* Built interactive dashboards for business intelligence stakeholders.

---

## Key Metrics:

1. **Total Bookings**: 103,024
2. **Successful Bookings**: 63,967 (≈62.09%)
3. **Total Cancellations**: 28,933 (≈28.08%)

   * By Driver: 18.43K
   * By Customer: 10.5K
   * Driver Not Found: 10.12K
4. **Driver Ratings**: Avg \~4.00
5. **Customer Ratings**: Avg \~4.00
6. **Top Payment Method**: UPI, followed by Cash and Credit Card

---

## SQL Views Created:

* `Successful_Bookings`: All successfully completed rides
* `ride_distance_for_each_vehicle`: Avg. ride distance by vehicle type
* `cancelled_rides_by_customers`: Total customer cancellations
* `Top_5_Customers`: Customers with highest number of bookings
* `Rides_Canceled_By_Drivers_P_C_Issues`: Filtered cancellations due to car/personal issues
* `Max_Min_Driver_Rating`: Highest and lowest ratings for Prime Sedan drivers
* `UPI_Payment`: All rides paid through UPI
* `AVG_Customer_Rating`: Average rating per vehicle type
* `total_successful_ride_value`: Total revenue from successful rides
* `Incomplete_Rides_Reason`: Reasons for incomplete rides

---

## Key Insights:

* **Most Frequent Cancellation Reasons (Customer)**:

  * Driver asked to cancel
  * Change of plans
  * Car-related complaints

* **Most Frequent Cancellation Reasons (Driver)**:

  * Personal & car-related issues
  * Customer-related behavior

* **Revenue Patterns**:

  * UPI and Cash dominate payment methods.
  * Top 5 customers alone contributed over ₹32,000+ in ride value.

* **Rating Stability**:

  * Both customer and driver ratings remain consistent around 4.00, indicating stable satisfaction levels.

---

## Technologies Used:

* **SQL** – MySQL for structured querying and data preparation
* **RapidMiner** – For Machine Learning modeling and anomaly detection
* **Power BI** – For data visualization and dashboard design
* **Machine Learning Models**: Isolation Forest, Random Forest, Gradient Boosting

---

## Outcome:

* Automated identification of underperforming or suspicious driver activity.
* Enhanced ETA and ride duration predictions using hybrid ML models.
* Actionable business insights via rich Power BI dashboards.
* End-to-end scalable architecture for data-driven ride optimization and customer experience improvement.

## Snapshots:

![image](https://github.com/user-attachments/assets/7fd854b1-2de6-48ff-8b15-c5b8b925cfea)

![image](https://github.com/user-attachments/assets/1365c668-261b-44ca-9ceb-c7f5e26aeda6)


