SELECT
    price_date,
    stock_name,
    closing_price,

    ROUND(
        AVG(closing_price) OVER (
            PARTITION BY stock_name
            ORDER BY price_date
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ),
        2
    ) AS ytd_average,

    ROUND(
        AVG(closing_price) OVER (
            PARTITION BY stock_name
            ORDER BY price_date
            ROWS BETWEEN 5 PRECEDING AND CURRENT ROW
        ),
        2
    ) AS six_day_moving_average

FROM stock_prices
ORDER BY stock_name, price_date;
