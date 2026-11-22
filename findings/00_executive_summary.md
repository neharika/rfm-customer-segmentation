# Executive Summary — RFM Customer Segmentation

## Project Overview

This project uses Recency, Frequency and Monetary (RFM) analysis to understand customer purchasing behaviour and identify opportunities for retention and revenue growth. Using PostgreSQL and Python, I analysed 19,979 delivered orders from a dataset of 10,000 customers. The analysis identified 6,052 customers with at least one delivered order during March 16–June 14, 2026. Monetary value accounts for successful refunds, providing a net-spending measure. The RFM snapshot date is June 15, 2026.

## Key Findings

- **Revenue concentration:** Champions represent just 12.77% of customers (773) but contribute 46.39% of net revenue, demonstrating the importance of protecting high-value customer relationships.
- **Growth opportunity:** Emerging Customers form the largest segment, representing 44.55% of customers (2,696) and 25.99% of revenue. Within this segment, 54.12% are one-time buyers, creating an opportunity to encourage repeat purchases.
- **Retention opportunity:** At Risk customers account for 18.85% of customers (1,141) and 18.02% of net revenue. Their average recency is 67.28 days, while their historical frequency or spending indicates potential value worth recovering.

## Business Recommendation

Marketing should prioritize retaining Champions through loyalty initiatives and personalized engagement, encourage second purchases among Emerging Customers, and run targeted win-back campaigns for At Risk customers. For Lost customers, lower-cost reactivation experiments are more appropriate than broad, expensive incentives.

## Detailed Findings

- [Customer Overview](01_customer_overview.md)
- [RFM Distributions](02_rfm_distributions.md)
- [Customer Segment Definitions](03_segment_definitions.md)