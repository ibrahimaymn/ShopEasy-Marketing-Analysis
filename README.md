# ShopEasy Marketing Analysis

 ShopEasy is an online store suffering from **low engagement and low conversion rates**  , our goal was to identify the root causes and provide **data-driven recommendations** to improve performance.

## Dashboard Preview
![Overview Dashboard](http://github.com/ibrahimaymn/ShopEasy-Marketing-Analysis/blob/main/Dashboard%20Screenshots/Overview.jpg?raw=True)
![Engagement Dashboard](http://github.com/ibrahimaymn/ShopEasy-Marketing-Analysis/blob/main/Dashboard%20Screenshots/Engagement.jpg?raw=True)
![Conversion Dashboard](http://github.com/ibrahimaymn/ShopEasy-Marketing-Analysis/blob/main/Dashboard%20Screenshots/Conversion.jpg?raw=True)
![Data Model](http://github.com/ibrahimaymn/ShopEasy-Marketing-Analysis/blob/main/Dashboard%20Screenshots/Data%20Model.jpg?raw=True)

## Key Insights
- Customer Satisfaction Issue: Primarily caused by logistics (delivery delays, damaged products), not marketing.
- Engagement Opportunity: Content types performance is nearly the same
- Conversion Bottleneck: The biggest customer drop-off occurs immediately before the checkout step.
- Growth Opportunity: The German and Dutch markets are the top-performing regions and represent a clear opportunity for rapid growth. 
## Recommendations
- **For the Customer Satisfaction Issue:** Review and improve the entire logistics process, focusing on shipping carriers and product packaging to reduce delays and prevent damage.
- **For the Engagement Opportunity:** Since content performance is flat, launch an A/B testing initiative to experiment with new and diverse content formats to discover what truly resonates with the audience.
- **For the Conversion Bottleneck:** Simplify the checkout process by reducing steps and increasing transparency. Display all costs, like shipping and taxes, upfront to build trust and reduce last-minute drop-offs.
- **For the Growth Opportunity:** Reallocate marketing budget and increase targeted campaign efforts in the high-performing German and Dutch markets to accelerate growth and maximize return on investment.

## Workflow SQL -> Python -> Power BI

### SQL – Data Cleaning
- Handled missing and null values  
- Removed unnecessary columns  
- Standardized text formats  
- Split columns where needed  
- Created new calculated fields (e.g., customer **age groups**)

### Python – Sentiment Analysis
- Used text analysis libraries to classify reviews as **Positive**, **Negative**, or **Neutral**


### Power BI – Modeling, Analysis & Visualization
- Built relationships between tables (Customers, Products, Customer_Journey, Reviews, Engagement,Geography).  
- Created **calculated measures (DAX)** for KPIs.  
- Designed a **Snowflake Schema** model for performance and clean reporting.  
- Built an **interactive dashboard** with filters and dynamic visuals.  

---

## Tools Used
- **SQL Server** for data extraction and cleaning  
- **Python (Pandas, TextBlob)** for sentiment analysis  
- **Power BI** for data modeling and visualization  
