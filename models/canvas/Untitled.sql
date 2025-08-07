WITH fct_orders AS (
  SELECT
    *
  FROM {{ ref('catalog_platform', 'fct_orders', v=1) }}
), filter_1 AS (
  SELECT
    *
  FROM fct_orders
  WHERE
    ORDER_TOTAL <> 0
), untitled_sql AS (
  SELECT
    *
  FROM filter_1
)
SELECT
  *
FROM untitled_sql