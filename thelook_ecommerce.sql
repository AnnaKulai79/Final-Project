-- Завдання 1: Знайомство з користувачами
-- Виведіть список усіх користувачів (таблиця users) із країни 'Brasil' (Бразилія), які зареєструвалися у 2023 році. Виведіть їхнє ім'я (first_name), прізвище (last_name) та електронну пошту.

SELECT first_name, last_name, email
FROM `bigquery-public-data.thelook_ecommerce.users`
WHERE (created_at BETWEEN '2023-01-01 00:00:00' AND '2023-12-31 23:59:59') AND country = 'Brasil';
-- Інший варіант:
--  WHERE country = 'Brasil' AND EXTRACT(YEAR FROM created_at) = 2023

-- Завдання 2: Топ-категорії товарів
-- Порахуйте, скільки всього товарів представлено в кожній категорії (таблиця products). Відсортуйте результат за кількістю товарів — від найбільшої до найменшої.

-- Підказка: використовуйте COUNT(*) та GROUP BY category.

SELECT category, COUNT(*) AS product_count
FROM `bigquery-public-data.thelook_ecommerce.products`
GROUP BY category
ORDER BY COUNT(*) DESC;


-- Завдання 3: Аналіз замовлень (JOIN)
-- Об'єднайте таблиці замовлень (orders) та користувачів (users). Виведіть order_id (ID замовлення), first_name та last_name клієнта, а також статус замовлення для всіх замовлень, які мають статус 'Shipped' (Відправлено).

SELECT orders.order_id, users.first_name, users.last_name, orders.status
FROM `bigquery-public-data.thelook_ecommerce.orders` AS orders
JOIN `bigquery-public-data.thelook_ecommerce.users` AS users ON orders.user_id = users.id
WHERE orders.status = 'Shipped';

SELECT orders.order_id, users.first_name, users.last_name, 
      CASE 
      WHEN orders.status = 'Shipped' THEN 'Shipped'
      ELSE 'Not yet'
      END
FROM `bigquery-public-data.thelook_ecommerce.orders` AS orders
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` AS users ON orders.user_id = users.id
ORDER BY orders.order_id
;

-- Завдання 4: Фінанси — найдорожчі замовлення
-- Знайдіть 10 найдорожчих замовлень (таблиця order_items). Виведіть order_id, user_id та ціну продажу (sale_price). Відсортуйте за ціною у спадному порядку.

-- Підказка: в одному замовленні може бути декілька product_id. Тому спочатку треба просумувати sale_price по order_id.

-- WITH ord_it AS (
--   SELECT 
--     order_id, 
--     user_id, 
--     SUM(sale_price) AS sales
--   FROM `bigquery-public-data.thelook_ecommerce.order_items`
--   GROUP BY order_id, user_id
-- ),
-- ranked_orders AS (
--   SELECT 
--     order_id, 
--     user_id, 
--     sales,
--     DENSE_RANK() OVER(ORDER BY sales DESC) AS rank_val
--   FROM ord_it
-- )

-- SELECT order_id, user_id, ROUND(sales, 2) AS total_price
-- FROM ranked_orders
-- WHERE rank_val <= 10
-- ORDER BY total_price DESC;


SELECT order_id, user_id, ROUND(SUM(sale_price), 2) AS total_price
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY order_id, user_id
ORDER BY total_price DESC
LIMIT 10;

-- Завдання 5: Географія покупців
-- Порахуйте кількість унікальних користувачів (таблиця users) у кожній країні. Виведіть тільки ті країни, де кількість користувачів перевищує 500.

SELECT country, COUNT(DISTINCT id) AS count_users
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY country
HAVING count_users>500
ORDER BY count_users DESC;