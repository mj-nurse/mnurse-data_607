DROP TABLE IF EXISTS stock_prices;

CREATE TABLE stock_prices (
    price_date DATE,
    stock_name TEXT,
    closing_price REAL
);

INSERT INTO stock_prices (price_date, stock_name, closing_price)
VALUES
    -- Stock A
    ('2026-09-01', 'Stock A', 150.00),
    ('2026-09-02', 'Stock A', 152.00),
    ('2026-09-03', 'Stock A', 149.00),
    ('2026-09-04', 'Stock A', 154.00),
    ('2026-09-05', 'Stock A', 156.00),
    ('2026-09-06', 'Stock A', 155.00),
    ('2026-09-07', 'Stock A', 158.00),
    ('2026-09-08', 'Stock A', 160.00),
    ('2026-09-09', 'Stock A', 159.00),
    ('2026-09-10', 'Stock A', 162.00),
    ('2026-09-11', 'Stock A', 164.00),
    ('2026-09-12', 'Stock A', 163.00),

    -- Stock B
    ('2026-09-01', 'Stock B', 275.00),
    ('2026-09-02', 'Stock B', 278.00),
    ('2026-09-03', 'Stock B', 274.00),
    ('2026-09-04', 'Stock B', 280.00),
    ('2026-09-05', 'Stock B', 282.00),
    ('2026-09-06', 'Stock B', 285.00),
    ('2026-09-07', 'Stock B', 283.00),
    ('2026-09-08', 'Stock B', 287.00),
    ('2026-09-09', 'Stock B', 290.00),
    ('2026-09-10', 'Stock B', 288.00),
    ('2026-09-11', 'Stock B', 292.00),
    ('2026-09-12', 'Stock B', 295.00);
