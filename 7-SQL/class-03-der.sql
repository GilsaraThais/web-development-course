DROP TABLE IF EXISTS clients;
CREATE TABLE IF NOT EXISTS clients (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR NOT NULL,
  cpf VARCHAR UNIQUE NOT NULL,
  street VARCHAR,
  neighborhood VARCHAR,
  city VARCHAR
);

DROP TABLE IF EXISTS phones;
CREATE TABLE IF NOT EXISTS phones (
  number VARCHAR NOT NULL,
  id_client INTEGER NOT NULL,
  PRIMARY KEY (number, id_client),
  FOREIGN KEY (id_client) REFERENCES clients(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR NOT NULL,
  price INTEGER NOT NULL,
  description VARCHAR
);

DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_client INTEGER NOT NULL,
  id_product INTEGER NOT NULL,
  amount INTEGER NOT NULL,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_client) REFERENCES clients(id) ON DELETE CASCADE
  FOREIGN KEY (id_product) REFERENCES products(id)
);

INSERT INTO clients(name, cpf) VALUES ('Mateus', '000.000.000-01'),
('Pablo', '000.000.000-02'),
('Ant Carlos', '000.000.000-03');

SELECT * FROM products;
INSERT INTO products (name, price) VALUES 
('Gabinete', 350),
('Ram 16GB', 200),
('SSD', 250),
('Cadeira', 1500),
('Mouse', 200),
('RTX', 300),
('Monitor', 3208);

SELECT * FROM sales;
INSERT INTO sales (id_client, id_product, amount) VALUES
(1, 3, 1),
(1, 2, 2),
(1, 3, 1);

SELECT clients.name, phones.number
FROM clients INNER JOIN phones
ON clients.id == phones.id_client;

SELECT clients.name, products.name, sales.amount, products.price, sales.amount * products.price AS total
FROM clients
INNER JOIN sales ON sales.id_client == clients.id
INNER JOIN products ON sales.id_product == products.id;

