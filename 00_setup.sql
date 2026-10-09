-- 00_setup.sql
-- Practice data: a FICTIONAL Australian retail chain, "Harbour Threads".
-- Paste this whole file into https://sqliteonline.com and click Run.

DROP TABLE IF EXISTS stores;
CREATE TABLE stores (
    store_id    INTEGER PRIMARY KEY,
    store_name  TEXT,
    suburb      TEXT,
    state       TEXT,
    opened_year INTEGER
);

INSERT INTO stores VALUES
(1, 'Harbour Threads Parramatta', 'Parramatta', 'NSW', 2015),
(2, 'Harbour Threads Sydney CBD', 'Sydney',     'NSW', 2012),
(3, 'Harbour Threads Chatswood',  'Chatswood',  'NSW', 2018),
(4, 'Harbour Threads Melbourne',  'Melbourne',  'VIC', 2016),
(5, 'Harbour Threads Brisbane',   'Brisbane',   'QLD', 2020),
(6, 'Harbour Threads Perth',      'Perth',      'WA',  2022);

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    sale_id    INTEGER PRIMARY KEY,
    sale_date  TEXT,      -- YYYY-MM-DD
    store_id   INTEGER,
    category   TEXT,
    quantity   INTEGER,
    unit_price REAL,      -- AUD
    channel    TEXT       -- 'In-store' or 'Online'
);

INSERT INTO sales VALUES
(1,  '2026-06-01', 1, 'Dresses',     1,  89.00, 'In-store'),
(2,  '2026-06-01', 2, 'Tops',        2,  45.00, 'Online'),
(3,  '2026-06-02', 3, 'Shoes',       1, 119.00, 'In-store'),
(4,  '2026-06-02', 4, 'Jeans',       1,  79.00, 'In-store'),
(5,  '2026-06-03', 5, 'Accessories', 3,  29.00, 'Online'),
(6,  '2026-06-03', 1, 'Outerwear',   1, 149.00, 'In-store'),
(7,  '2026-06-04', 2, 'Dresses',     2,  89.00, 'In-store'),
(8,  '2026-06-04', 6, 'Tops',        1,  45.00, 'Online'),
(9,  '2026-06-05', 3, 'Accessories', 2,  29.00, 'In-store'),
(10, '2026-06-05', 4, 'Shoes',       1, 119.00, 'Online'),
(11, '2026-06-06', 1, 'Tops',        3,  45.00, 'In-store'),
(12, '2026-06-06', 2, 'Outerwear',   1, 149.00, 'In-store'),
(13, '2026-06-07', 5, 'Jeans',       2,  79.00, 'In-store'),
(14, '2026-06-07', 6, 'Dresses',     1,  89.00, 'Online'),
(15, '2026-06-08', 1, 'Shoes',       1, 119.00, 'Online'),
(16, '2026-06-08', 3, 'Tops',        2,  45.00, 'In-store'),
(17, '2026-06-09', 4, 'Accessories', 4,  29.00, 'In-store'),
(18, '2026-06-09', 2, 'Jeans',       1,  79.00, 'Online'),
(19, '2026-06-10', 5, 'Dresses',     1,  89.00, 'In-store'),
(20, '2026-06-10', 1, 'Accessories', 1,  29.00, 'In-store');
