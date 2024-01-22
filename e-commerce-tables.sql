-- Table users
CREATE TABLE users (
  user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  username VARCHAR ( 255 ) UNIQUE NOT NULL,
  password  VARCHAR ( 255 ) NOT NULL,
  email VARCHAR ( 255 ) UNIQUE NOT NULL,
  created_at TIMESTAMPTZ NOT NULL
);

-- Table products
CREATE TABLE products (
  product_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR ( 255 ) NOT NULL,
  description text,
  price NUMERIC ( 10, 2 ) NOT NULL,
  created_at TIMESTAMPTZ NOT NULL
);

-- Table categories
CREATE TABLE categories (
  product_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR ( 255 ) UNIQUE NOT NULL,
  created_at TIMESTAMPTZ NOT NULL 
);

-- Table product_categories
CREATE TABLE product_categories (
  product_category_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  product_id INT REFERENCES products(product_id),
  category_id INT REFERENCES categories(category_id) 
);