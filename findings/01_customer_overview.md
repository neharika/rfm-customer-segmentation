# Customer Overview 

## Who shops here?

The dataset contains 10,000 customers, of whom 6,052 (60.52%) have at least one delivered order. The remaining 3,948 customers have no delivered purchases during the observation period.

Among purchasing customers, the average number of delivered orders is 3.30, while the median is just 1. Approximately 50.13% of purchasing customers made only one delivered purchase, and 36.86% made between 2 and 5 purchases. This indicates that repeat purchasing is concentrated among a smaller group of customers.

## How much do they spend?

Among the 6,052 purchasing customers, average net delivered spending is ₹24,681.02, while median spending is ₹11,326.82. The substantial difference indicates a strongly right-skewed spending distribution, where a relatively small group of high-spending customers pulls the average upward.

The 25th percentile of spending is ₹4,184.28, while the 75th percentile is ₹28,085.88. Maximum customer spending reaches ₹787,135.98.

Spending is also highly concentrated. The top 10% of purchasing customers (606 people) account for 47.97% of total spending. The top 20% contribute 65.21%, and the top 50% contribute 90.45%. The bottom half of purchasing customers therefore accounts for 9.55% of spending.

## What stood out?

Both spending and purchase frequency are strongly right-skewed. Most purchasing customers spend relatively modest amounts and have made relatively few purchases, while a smaller group contributes disproportionately to business spending.

The delivered-order data spans 90 days, from 16 March to 14 June 2026. This is a relatively short observation window, so the findings describe recent purchasing behaviour rather than long-term customer loyalty or annual seasonality.

**Analytical note:** Customer spending is calculated using `orders.total` for delivered orders, less successful refunds recorded in the refund dataset. Product revenue analysis separately uses `order_items.line_total`.
