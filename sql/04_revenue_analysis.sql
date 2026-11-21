
-- =====================================================
-- 04. REVENUE ANALYSIS
-- Project: RFM Customer Segmentation
-- Purpose: Calculate gross order value, successful
--          refunds and net order value
-- =====================================================


-- 1. Identify delivered orders

WITH delivered_orders AS (
    SELECT
        order_id,
        customer_id,
        total
    FROM ecom.orders
    WHERE LOWER(TRIM(status)) = 'delivered'
),

-- 2. Calculate successful refunds per order

successful_refunds AS (
    SELECT
        order_id,
        SUM(amount) AS refund_amount
    FROM ecom.refunds
    WHERE status = 'succeeded'
    GROUP BY order_id
)

-- 3. Calculate gross and net order value

SELECT
    COUNT(*) AS delivered_orders,

    ROUND(SUM(o.total), 2) AS gross_order_value,

    ROUND(
        COALESCE(SUM(r.refund_amount), 0), 2
    ) AS successful_refunds,

    ROUND(
        SUM(o.total) - COALESCE(SUM(r.refund_amount), 0),
        2
    ) AS net_order_value

FROM delivered_orders o
LEFT JOIN successful_refunds r
    ON o.order_id = r.order_id;
