### 1. Customer Spending Distribution

Analysis of 6,052 customers with delivered orders reveals a strongly right-skewed spending distribution.

- Average customer spending: ₹24,679.44
- Median customer spending: ₹11,326.82
- 25th percentile: ₹4184.28
- 75th percentile: ₹28,085.88
- 90th percentile: ₹54,913.74
- 95th percentile: ₹81,412.83

The average is substantially higher than the median, suggesting that a relatively small group of high-spending customers contributes disproportionately to overall customer spending.

**Business implication:** Median spending provides a more representative measure of typical customer spending than the mean. Further analysis of high-value customers can help identify opportunities for customer retention and targeted marketing.

### 5. Customer Revenue Concentration

**Objective:** Understand how much of the business's net delivered revenue is contributed by its highest-spending customers.

**Results:**

| Customer Group | Number of Customers | Net Revenue Contribution |
|---|---:|---:|
| Top 10% | 606 | 48.05% |
| Top 20% | 1,211 | 65.32% |
| Top 50% | 3,026 | 90.52% |
| Bottom 50% | 3,026 | 9.48% |

**Key Findings:**

- The top 10% of customers contribute 48.05% of total net delivered revenue.
- The top 20% account for 65.32% of net revenue.
- The top 50% contribute 90.52% of net revenue.
- The bottom 50% contribute only 9.48%.

**Business Implications:**

Net revenue is highly concentrated among a relatively small group of customers. Retaining high-value customers is therefore important for protecting revenue. Lower-spending customers may represent an opportunity for growth through targeted engagement and repeat-purchase initiatives.

**Methodology:** Customers with at least one delivered order were ranked by net delivered spending in descending order. Net spending was calculated as delivered order value (`orders.total`) less successful refunds. Revenue contribution was calculated cumulatively for the top 10%, 20%, and 50% of customers.

### 6. Customer Spending vs Purchase Frequency

**Objective:** Investigate whether high-value customers generate more revenue through higher purchase frequency, higher order value, or both.

**Results:**

| Metric | Top 10% | Remaining 90% |
|---|---:|---:|
| Customer count | 606 | 5,446 |
| Average delivered orders/customer | 13.08 | 2.21 |
| Average delivered spend/customer | ₹119,071.23 | ₹14,370.38 |
| Average order value | ₹13,582.77 | ₹6,939.61 |
| Total delivered revenue | ₹72,157,166.86 | ₹78,261,070.80 |

**Key Findings:**

- Top 10% customers place approximately 5.92 times more delivered orders per customer.
- Their average order value is approximately 1.96 times higher.
- Their average delivered spending per customer is approximately 8.29 times higher.
- Despite representing only 10% of active customers, this group contributes approximately 47.97% of total delivered revenue.

**Business Implications:**

High-value customers generate revenue through both greater purchase frequency and higher average order values. Customer retention strategies should therefore focus on encouraging repeat purchases while maintaining strong engagement with high-value customers.

**Methodology:** Customers were ranked by total delivered spending and divided into the top 10% and remaining 90%. Customer-level purchase frequency, spending and average order value were compared between the groups.

### 7. Customer Recency distribution.

6,052 customers had at least one delivered order.
41.84% had their most recent delivered purchase within 30 days.
58.16% had not purchased within the last 30 days.
29.20% had gone 61–91 days without a delivered purchase.

### 8. A small group of highly frequent customers drives a disproportionate share of order volume

- 50.13% of customers made only one delivered purchase, contributing 15.19% of delivered orders.
- 49.87% of customers made repeat purchases and contributed 84.81% of delivered orders.
- Customers with more than 10 delivered orders represented just 4.30% of the customer base but generated 29.78% of all delivered orders.
- These 260 highly frequent customers placed 5,950 delivered orders, averaging 22.88 orders per customer.

**Business implication:** Retaining highly frequent customers and converting one-time purchasers into repeat buyers represent two potential opportunities for improving customer retention and order volume.