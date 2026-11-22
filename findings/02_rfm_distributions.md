# RFM Feature Distributions and Customer Behaviour Analysis

## 1. Analysis Scope and Reference Date

The analysis covers delivered orders recorded between March 16 and June 14, 2026. A fixed snapshot date of **June 15, 2026** was selected because it is one day after the latest delivered order.

The analysis includes 6,052 customers with at least one delivered order. Cancelled and other non-delivered orders are excluded from the RFM calculations.

The three RFM features are defined as follows:

- **Recency:** Number of calendar days since the customer's most recent delivered purchase.
- **Frequency:** Number of delivered orders placed by the customer during the observation period.
- **Monetary:** Total delivered order value less successful refunds.

Only refunds with a `succeeded` status are deducted from customer spending. Initiated and failed refunds are excluded from the adjustment.

## 2. Recency Distribution

Recency measures how recently a customer made a delivered purchase.

| Metric | Value |
|---|---:|
| Customers | 6,052 |
| Mean | 41.06 days |
| Median | 39 days |
| 25th percentile | 19 days |
| 75th percentile | 64 days |
| Minimum | 1 day |
| Maximum | 91 days |

The distribution shows noticeable concentrations around 15–22 days and 65–70 days, indicating variation in how recently customers purchased.

Customer recency bands show:

- 41.84% made their most recent delivered purchase within 30 days.
- 28.97% had a Recency of 31–60 days.
- 29.20% had a Recency of 61–91 days.

The median of 39 days indicates that half of the customers made their last delivered purchase within approximately five and a half weeks of the snapshot date.

**Business implication:** Customers with higher Recency values may require re-engagement campaigns, while recently active customers may be suitable for retention and repeat-purchase initiatives.

## 3. Frequency Distribution

Frequency measures the number of delivered orders placed by each customer.

| Metric | Value |
|---|---:|
| Mean | 3.30 orders |
| Median | 1 order |
| 25th percentile | 1 order |
| 75th percentile | 4 orders |
| Minimum | 1 order |
| Maximum | 102 orders |

The distribution is strongly right-skewed. Approximately 50.13% of customers placed exactly one delivered order, while the median Frequency is one order.

Frequency bands reveal:

| Delivered Orders | Customers | Customer Share |
|---|---:|---:|
| 1 order | 3,034 | 50.13% |
| 2–5 orders | 2,231 | 36.86% |
| 6–10 orders | 527 | 8.71% |
| More than 10 orders | 260 | 4.30% |

Customers with more than 10 delivered orders represent only 4.30% of the customer base but generated 5,950 delivered orders, approximately 29.78% of all delivered orders.

The highest-frequency customer placed 102 delivered orders. This observation was investigated by examining order IDs, purchase dates, daily order counts and payment information. No sufficient evidence of a data-quality error was established, so the customer was retained.

**Business implication:** Converting one-time buyers into repeat purchasers and retaining high-frequency customers are two important opportunities for improving customer retention and order volume.

## 4. Net Monetary Distribution

Monetary measures customer spending after deducting successful refunds.

The calculation uses `orders.total`, which includes order subtotal, tax and shipping charges.

**Net Monetary = Delivered Order Total − Successful Refunds**

The refund adjustment was reconciled before being applied to customer spending.

| Financial Metric | Amount |
|---|---:|
| Gross delivered order value | ₹150,418,237.66 |
| Successful refunds | ₹1,058,291.82 |
| Net delivered order value | ₹149,359,945.84 |

The final net Monetary distribution is:

| Metric | Value |
|---|---:|
| Mean | ₹24,679.44 |
| Median | ₹11,326.82 |
| 25th percentile | ₹4,184.28 |
| 75th percentile | ₹28,085.88 |
| 90th percentile | ₹54,913.74 |
| 95th percentile | ₹81,412.83 |
| Minimum | ₹0.00 |
| Maximum | ₹787,135.98 |

The mean is substantially higher than the median, indicating a strongly right-skewed distribution. Most customers spend considerably less than the average, while a relatively small group of high-spending customers contributes disproportionately to total customer spending.

Seventeen customers have zero net Monetary because their successful refunds fully offset their delivered order value. These customers remain in the final RFM dataset.

The full distribution uses a logarithmic Y-axis to make the long tail more visible. A separate linear-scale zoomed view, limited to ₹100,000, provides greater detail on the spending distribution among the majority of customers.

**Business implication:** The difference between average and median spending suggests that high-value customers deserve attention in retention strategies. The spending distribution also provides a basis for identifying potential opportunities to increase customer value.

## 5. Customer Revenue Concentration

Customer revenue concentration analysis examines how much net delivered revenue is contributed by the highest-spending customers.

| Customer Group | Number of Customers | Net Revenue Contribution |
|---|---:|---:|
| Top 10% | 605 | 48.01% |
| Top 20% | 1,210 | 65.30% |
| Top 50% | 3,026 | 90.52% |
| Bottom 50% | 3,026 | 9.48% |

The findings indicate that net revenue is concentrated among a relatively small proportion of customers. The top 20% contribute approximately 65.30% of net delivered revenue, while the bottom 50% contribute only 9.48%.

**Business implication:** Maintaining relationships with high-value customers is important for protecting revenue. Lower-spending customers may represent an opportunity for growth through targeted engagement and repeat-purchase initiatives.

## 6. Net Spending vs Purchase Frequency

To understand the behaviour of high-value customers, customers were ranked by net Monetary and divided into the top 10% and remaining 90%.

| Metric | Top 10% | Remaining 90% |
|---|---:|---:|
| Customer count | 605 | 5,447 |
| Average orders per customer | 13.09 | 2.21 |
| Average net spending per customer | ₹118,521.59 | ₹14,256.36 |
| Average net order value | ₹9,054.88 | ₹6,439.00 |
| Total net revenue | ₹71,705,560.81 | ₹77,654,385.03 |

The top 10% of customers generate approximately 48.01% of total net revenue despite representing only 10% of the customer base.

Their average purchase frequency is approximately 5.92 times that of the remaining customers, while their average net order value is approximately 1.41 times higher.

This indicates that high-value customers generate greater spending through both more frequent purchases and higher average order values.

**Business implication:** Retention strategies for high-value customers are important for protecting revenue. Encouraging repeat purchases among the remaining customer base may also provide opportunities to increase customer value.


## 7. Overall Business Observations

The RFM analysis reveals several important patterns:

1. **One-time buyers dominate:** Approximately half of the customers placed only one delivered order.
2. **Repeat purchases are concentrated:** A relatively small group of high-frequency customers contributes a substantial share of total order volume.
3. **Spending is highly uneven:** The mean net spending is more than twice the median, indicating a long right tail.
4. **Revenue concentration is significant:The top 20% of customers contribute 65.30% of net delivered revenue, while the bottom 50% contribute only 9.48%.
5. **Customer activity varies:** Recency ranges from 1 to 91 days, providing an opportunity to distinguish recently active customers from those who may need re-engagement.

These findings demonstrate considerable variation in customer purchasing behaviour across Recency, Frequency and Monetary.

The final RFM dataset contains 6,052 unique customers and has passed validation for duplicate IDs, missing values, negative Recency, invalid Frequency and negative Monetary values.

The dataset is ready for the next stage: **RFM scoring and customer segmentation**.