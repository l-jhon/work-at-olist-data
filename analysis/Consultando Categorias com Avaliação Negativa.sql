-- Verificando as Categorias com mais avaliações negativas
SELECT
  OP.product_id,
  OP.product_category_name,
  ODR.review_comment_title,
  ODR.review_comment_message,
  ODR.review_score
  FROM db_olist.olist_orders AS OD 
  INNER JOIN db_olist.olist_order_items ODI
  ON ODI.order_id = OD.order_id
  INNER JOIN db_olist.olist_order_reviews ODR
  ON ODR.order_id = OD.order_id
  INNER JOIN db_olist.olist_products OP
  ON OP.product_id = ODI.product_id
  WHERE ODR.review_score = 1