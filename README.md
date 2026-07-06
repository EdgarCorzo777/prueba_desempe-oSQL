RiwiSupply Database
Project description
Relational database solution to centralize, clean, and standardize inconsistent Excel data for RiwiSupply S.A.S.

Technologies used
SQL (DDL, DML, Queries, Views, Functions)
Draw.io
Git / GitHub


Database engine used
PostgreSQL.

Explanation of normalization process
The original Excel was a flat table (0NF).

1NF: Ensured atomic values in all cells.
2NF: Extracted master data (Suppliers, Products, Warehouses, Categories) to remove partial dependencies.
3FN: Extracted riwi_city and riwi_purchase to eliminate transitive dependencies and avoid repeating Purchase Orders in the movement table. Inconsistent names (e.g., "ACEROS NORTE" vs "Aceros del Norte") were cleansed during this process.


Database structure
Master Tables: riwi_city, riwi_category, riwi_supplier, riwi_product, riwi_warehouse.
Context Table: riwi_purchase.
Transactional Table: riwi_movement.
Entity Relationship Model
See the attached file MER_RiwiSupply.pdf.

Instructions to create the database
Open your PostgreSQL client.
Run bd_Edgar_Corzo_Garabato.sql to create the database, tables, and constraints.

Instructions to load data
Run script_dml_carga.sql. SQL inserts were used instead of direct CSV import to manually cleanse and link the dirty Excel data into the normalized relational structure.

Explanation of each SQL query

Stock available: SUM() with CASE to add 'IN' and subtract 'OUT' quantities by product.

Movement details: JOIN between movements, warehouses, and products.

Total by supplier: SUM(quantity * price) linking movements through riwi_purchase.

Movements by warehouse: COUNT() grouped by warehouse, ordered descending.

Top product: SUM(quantity) grouped by product with LIMIT 1.

Inventory value by warehouse: SUM(quantity * price) grouped by warehouse.


Developer information

Full name: Edgar Corzo
Clan: Garabato