
-- =====================================================
-- 02. ORDER STATUS ANALYSIS
-- Project: RFM Customer Segmentation
-- Purpose: Explore order status distribution
-- =====================================================

-- 1. Original order status distribution

SELECT
    status,
    COUNT(*) AS order_count,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM ecom.orders
GROUP BY status
ORDER BY order_count DESC;


-- 2. Normalize order statuses

SELECT
    LOWER(TRIM(status)) AS clean_status,
    COUNT(*) AS order_count,
    COUNT(DISTINCT customer_id) AS unique_customers,
    MIN(created_at) AS first_order,
    MAX(created_at) AS last_order
FROM ecom.orders
GROUP BY LOWER(TRIM(status))
ORDER BY order_count DESC;
