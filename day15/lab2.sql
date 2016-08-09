SELECT total.product_id, total.sum_sold,  total.remaining_quantity, total.sum_sold + total.remaining_quantity AS total_ever
FROM (SELECT line_items.product_id, SUM(line_items.quantity) AS sum_sold, products.remaining_quantity
      FROM line_items
      INNER JOIN products ON products.id = line_items.product_id
      GROUP BY line_items.product_id, products.remaining_quantity
      ORDER BY line_items.product_id ASC) AS total;
