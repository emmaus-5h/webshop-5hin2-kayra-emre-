--
-- create tables
--

-- feebdack GEE 2 feb 2024
-- je hebt 5 tabellen
-- je hebt 1:n relaties
-- je mist nog een n:m relatie (je moet er daar minimaal 1 van hebben)
-- kijk in de sheets of de video (beide bij T5. Databases) wat n:m is
-- een voorbeeld van n:m is auto (in je tabel products) en accessoires (een tabel accessoires, met iserts voor airco, navigatie ). Je hebt dan een extra tabel nodig om products eb accessoires.

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  stock_id INTEGER,
  interest_id INTEGER,
  time_id INTEGER,
  category VARCHAR (250),
  doors INTEGER 
);



--stock 1:n relatie
CREATE table stocks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  instock VARCHAR(150)
);

--interest 1:n relatie
CREATE table interest (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  instock VARCHAR(150)
);
--time 1:n relatie
CREATE table time (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  instock VARCHAR(150)
);
--category 1:n relatie
CREATE table category (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  instock VARCHAR(150)
);




--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, stock_id, interest_id, time_id, category) values ('Mercedez Benz', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 'appp', 'appp','appp', 'appp', 37000);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category) values ('BMW', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', 'appp', 'appp', 'appp', 'appp', '077030122-3', 45000);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category) values ('Audi', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 'appp', 'appp', 'appp',  'appp', 33000);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category) values ('Toyota', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 'appp', 'appp', 'appp', 'appp', '693155505-7', 19000);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category) values ('Ferrari', 'Almost a Bride', 'appp', 'appp', 'appp', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);

--stocks
  insert into stocks (instock) values ('In Stock');
  insert into stocks (instock) values ('Out of stock');
  
--interest 
  insert into interest (name) values ('Best seller');
  insert into interest (name) values ('New');
  insert into interest (name) values ('DISCOUNT');

--time
  insert into time (name) values ('Regular, 3 months');
  insert into time (name) values ('Fast Service, 6 weeks');

-- category
  insert into category (name) values ('SUV');
  insert into category (name) values ('Sedan');
  insert into category (name) values ('Coupé');
  insert into category (name) values ('Station Wagon');
  insert into category (name) values ('Supercar');
  insert into category (name) values ('Sport');


