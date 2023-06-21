# Sales-Product-Analysis

## Description

In this project, I will be analysed the sales data from vairous aspect. The main objective here is to generate insights from sales data, trends, and market segments to target to improve business performance. The process includes data reading, cleaning, manipulating, and analizing. It will be intitally reading and cleaning by using Python, manipulating and analyzing using Excel and SQL, and finally visualising using Tableau. 

**The Dataset:** [Sales Product Dataset](https://www.kaggle.com/datasets/knightbearr/sales-product-data)

**Python Notebook:** [sales-product-data-cleaning](https://github.com/angelaa99/Sales-Product-Analysis/blob/main/sales-product-data-cleaning.ipynb)

**SQL:** [Sales_Product_Data.sql](https://github.com/angelaa99/Sales-Product-Analysis/blob/main/Sales_Product_Data.sql)

**Tableau:** [Sales Product Analysis](https://public.tableau.com/app/profile/gaik.sim.loh/viz/SalesProductAnalysis_16872735992910/Dashboard1)

## Data Description

The orginal data set from [Kaggle](https://www.kaggle.com/datasets/knightbearr/sales-product-data) is stored in CSV format. The columns in the all data files are as follows:

- `Order ID` - An Order ID is the number system that Amazon uses exclusively to keep track of orders. Each order receives its own Order ID that will not be duplicated. This number can be useful to the seller when attempting to find out certain details about an order such as shipment date or status.
- `Product` - The product that have been sold.
- `Quantity Ordered` - Ordered Quantity is the total item quantity ordered in the initial order (without any changes).
- `Price Each` - The price of each products.
- `Order Date` - This is the date the customer is requesting the order be shipped.
- `Purchase Address` - The purchase order is prepared by the buyer, often through a purchasing department. The purchase order, or PO, usually includes a PO number, which is useful in matching shipments with purchases; a shipping date; billing address; shipping address; and the request items, quantities and price.

The `sales_product_data` data set is a cleaned data set with new columns added:
- `City` - City extracted from `Purchase Address`.
- `State` - State extracted from `Purchase Address`.
- `Zip` - Zip extracted from `Purchase Address`.
- `Sales` - Calculation of `Quantity Ordered` multiply with `Price Each`.
- `Month` - Represents only month of the `Order Date`.
