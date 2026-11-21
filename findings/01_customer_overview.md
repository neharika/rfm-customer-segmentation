# Customer Overview 

## Who shops here?

The dataset contains 10,000 customers, of whom 6,052 (60.52%) have at least one delivered order. The remaining 3,948 customers have no delivered purchases during the observation period.

Among purchasing customers, the average number of delivered orders is 3.30, while the median is just 1. Approximately 50.13% of purchasing customers made only one delivered purchase, and 36.86% made between 2 and 5 purchases. This indicates that repeat purchasing is concentrated among a smaller group of customers.

## How much do they spend?

Among the 6,052 purchasing customers, average delivered spending is ₹21,052.49, while median spending is ₹9,696. The substantial difference indicates a strongly right-skewed spending distribution: a relatively small group of high-spending customers pulls the average upward.

Spending is also highly concentrated. The top 10% of purchasing customers (606 people) account for 47.98% of total spending. The top 20% contribute 65.22%, and the top 50% contribute 90.47%. The bottom half of purchasing customers therefore accounts for only 9.53% of spending.

## What stood out?

Both spending and purchase frequency are strongly right-skewed. Most purchasing customers spend relatively modest amounts and have made relatively few purchases, while a smaller group contributes disproportionately to business spending.

The delivered-order data spans 90 days, from 16 March to 14 June 2026. This is a relatively short observation window, so the findings describe recent purchasing behaviour rather than long-term customer loyalty or annual seasonality.

**Analytical note:** Customer spending is calculated as the sum of
`order_items.line_total` for delivered orders. Refunds and returns
are not deducted from customer-level spending because item-level
return matching was not established.
