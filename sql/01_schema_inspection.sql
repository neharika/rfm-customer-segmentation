
-- =====================================================
-- 01. SCHEMA INSPECTION
-- Project: RFM Customer Segmentation
-- Purpose: Understand database structure
-- =====================================================

-- 1. List all tables in the ecom schema

SELECT
    table_name
FROM information_schema.tables
WHERE table_schema = 'ecom'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;


-- 2. Inspect column names and data types

SELECT
    table_name,
    column_name,
    data_type,
    is_nullable
FROM information_schema.columns
WHERE table_schema = 'ecom'
ORDER BY table_name, ordinal_position;
