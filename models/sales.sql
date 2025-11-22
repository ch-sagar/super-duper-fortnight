SELECT 
    sales_id,
    product_id,
    customer_id,
    sale_date,
    sale_amount,
    RANK() OVER (PARTITION BY customer_id ORDER BY sale_date DESC) AS rank_per_customer,
    SUM(sale_amount) OVER (PARTITION BY customer_id) AS total_sales_per_customer,
    AVG(sale_amount) OVER (PARTITION BY product_id) AS avg_sales_per_product
FROM 
    sales;