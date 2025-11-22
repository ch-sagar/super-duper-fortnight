SELECT 
    r.id AS retail_id,
    r.name AS retail_name,
    r.location AS retail_location,
    c.id AS customer_id,
    c.name AS customer_name,
    o.id AS order_id,
    o.order_date,
    o.total_amount
FROM 
    retail r
LEFT JOIN 
    customers c ON r.id = c.retail_id
LEFT JOIN 
    orders o ON c.id = o.customer_id;