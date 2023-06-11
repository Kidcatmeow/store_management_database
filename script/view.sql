CREATE VIEW item_sales_view AS
SELECT a.stock_id,b.item_name,a.price,a.quantity, SUM(a.quantity * a.price) AS total_sales
FROM orderitem AS a,stock AS b
WHERE a.stock_id = b.stock_id
GROUP BY stock_id,item_name,price,quantity
ORDER BY total_sales DESC;

SELECT * FROM item_sales_view;
