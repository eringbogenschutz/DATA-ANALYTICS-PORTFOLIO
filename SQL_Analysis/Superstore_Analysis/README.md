**Overview**

This project analyzes product inventory, pricing, and customer satisfaction data for a fictional retail superstore. Using SQL, the analysis answers common busniess questions related to inventory management, product performance, and capital allocation. 

This project demonstrates how SQL can be used to support decision making including identifying top-rated products, overstock risks, and high-capital inventory items. 

**Business Objectives**

Retail managers need insight into: 
- Product pricing and distribution
- Inventory levels by category
- Customer satisfacction trends
- Capital tied up in stock
- Overstocked, low preforming items

This analysis helps guide **pricing strategy, inventory optimization, and merchandising decisions.**

**Dataset Description**

- item_id - Unique product identifier
- item_name
- category
- price
- stock_quantity
- average_rating

The dataset includes **15 products** across four categories: 
- Electronics
- Furnishings
- Kitchen Supplies
- Appliances

**Key Analysis & Findings**

**Query 1: Price Distribution**

**Question:** Which products are priced from highest to lowest?

**Insight:** Price range from low-cost home goods to premium electonis, showing a wide pricing range and strategy.

<img width="611" height="380" alt="Screenshot 2026-01-05 at 10 36 37 AM" src="https://github.com/user-attachments/assets/8c506ade-d7ce-4558-884e-df613764279b" />

**Query 2: Products Count by Categoty**

**Questions:** How many products exist in each category? 

**Insignts:** Inventory is evenly distributed with most categories containing 3-4 products. 

**Query 3: Maximum Price per Category**

**Question:** What is the highest priced item in each category? 

**Insight:** Electronics and Furnishings contain the most expensice items, which may produce more revenue. 

<img width="611" height="380" alt="Screenshot 2026-01-05 at 10 43 44 AM" src="https://github.com/user-attachments/assets/56de2c20-a596-44f9-8d7c-7aa568af9aab" />

**Query 4: Highest-Rated Product**

**Question:** Which product has the highest customer rating?

**Insight:** The **Premium Coffee Maker** received the highest rating(4.9), signaling strong customer satisfation. 

**Query 5: Capital Tied up in Inventory**

**Question:** Which products represent the highest inventory value? 

**Insight:** Large items like the **Memory Foam Mattress** and **Smart LED TV** tie up the most capital, making them critical for inventory planning. 

**Query 6: Category Performance(Price vs Satisfaction)**

**Question:** Which categories perform best based on price and customer ratings? 

**Insight:** Kitchen Supplies have the highest average customer rating, while Electronics have lower average ratings despite higher prices.

**Query 7: Overstocked & Low Rated Items**

**Question:** Which items are overstocked but have lower customer ratings?

**Insight:** The Wireless Bluetooth Speaker and Cozy Throw Blanket may requrire promotions or inventory reduction strategies. 

**Query 8: Product Rating Classification**

**Question:** How can products be grouped by performance? 

**Insight:**
Using a CASE statement products were categoriezed as 
- Excellent
- Good
- Needs Improvemnt
Which simplified reporting and performance tracking.

<img width="611" height="380" alt="Screenshot 2026-01-05 at 11 21 32 AM" src="https://github.com/user-attachments/assets/4eec3273-a533-4ba7-ba58-98ff78a4c73b" />


**Skills Demonstrated**
- SQL table creation and data insertion
- Aggergatings(COUNT, MAX, AVG)
- Sorting and filtering
- Calculated fields
- Business logic with CASE statement
- Retail and inventory analysis


**Conclusion**
This project deomstrates how SQL can be used to analyze retial inventory and customer feedback data to support strategic busniess decisions. The queries provide insights into pricing structure, inventory risk, and product performance. 
