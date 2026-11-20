
-- =====================================================
-- 03. REFUND ANALYSIS
-- Project: RFM Customer Segmentation
-- Purpose: Understand refund patterns and their
--          relationship with delivered orders
-- =====================================================


-- 1. Refund distribution by status

SELECT
    status,
    COUNT(*) AS refund_count,
    COUNT(DISTINCT order_id) AS unique_orders,
    SUM(amount) AS total_refund_amount,
    AVG(amount) AS average_refund_amount
FROM ecom.refunds
GROUP BY status
ORDER BY refund_count DESC;


-- 2. Refund status vs order status

SELECT
    LOWER(TRIM(o.status)) AS order_status,
    r.status AS refund_status,
    COUNT(*) AS refund_count,
    SUM(r.amount) AS refund_amount
FROM ecom.refunds r
JOIN ecom.orders o
    ON r.order_id = o.order_id
GROUP BY
    LOWER(TRIM(o.status)),
    r.status
ORDER BY
    order_status,
    refund_status;
