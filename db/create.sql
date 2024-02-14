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
  accessoires VARCHAR (250)
);



--stock 1:n relatie
CREATE table stocks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  instock VARCHAR(150)
);

--interest 1:n relatie
CREATE table interest (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  interest VARCHAR(150)
);
--time 1:n relatie
CREATE table time (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time VARCHAR(150)
);
--category 1:n relatie
CREATE table category (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  category VARCHAR(150)
);

--accessoires n:m relatie 
CREATE table accessoires (
id INTEGER PRIMARY KEY AUTOINCREMENT,
  accessoires VARCHAR(150)
);
  



  



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--
--Mercedez Benz
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Mercedez Benz', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 37000, 1, 2, 1, 1, 2);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Mercedes', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 45000, 1, 3, 1, 5, 3);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Mercedes', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 33000, 2, 1, 2, 3, 1 );


--BMW
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('BMW M5 Competition', 'Dit is de nieuwste BMW.', '816905633-0', 180.000, 1, 2, 1, 1, 2);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('BMW X6', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 120.000 ,1, 3, 1, 5 , 3);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('BMW M3 Touring', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 110000, 2, 1, 2, 3, 1);

--Audi
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Audi', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 120.000 ,1, 3, 1, 5 , 3);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Audi', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '816905633-0', 89000, 2, 1, 2, 3, 1);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Audi', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 96000, 1, 2, 1, 1, 2);


--Ferrari
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Ferrari', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 120.000 ,1, 3, 1, 5 , 3);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Ferrari', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 89000, 2, 1, 2, 3, 1);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Ferrari', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 96000, 1, 2, 1, 1, 2);


--stocks
  insert into stocks (instock) values ('In Stock');
  insert into stocks (instock) values ('Out of stock');
  
--interest 
  insert into interest (interest) values ('Best seller');
  insert into interest (interest) values ('New');
  insert into interest (interest) values ('Regular');

--time
  insert into time (time) values ('Regular, 3 months');
  insert into time (time) values ('Fast Service, 6 weeks');

-- category
  insert into category (category) values ('SUV');
  insert into category (category) values ('Sedan');
  insert into category (category) values ('Coupé');
  insert into category (category) values ('Station Wagon');
  insert into category (category) values ('Supercar');
  insert into category (category) values ('Sport');

-- accesoires
  insert into accessoires (accessoires) values ('Air conditioning');
  insert into accessoires (accessoires) values ('Navigation');
  insert into accessoires (accessoires) values ('Airbag');



