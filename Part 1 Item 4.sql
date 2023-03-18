SELECT o.order_status, o.order_id, u.username, p.item_name, SUM(item_qty) as tota_qty
FROM orders o
JOIN users u
ON o.user_id = u.user_id
JOIN products p
ON o.item_id = p.item_id
WHERE o.order_status='D'
GROUP BY o.order_status;