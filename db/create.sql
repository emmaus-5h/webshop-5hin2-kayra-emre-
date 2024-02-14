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
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Mercedez Benz', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 30000, 1, 2, 1, 'Sedan' , 'Airbag');

insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Mercedes AMG GT', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 240000, 1, 3, 1, 5, 3);

insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Mercedes CLA 250 4Matic', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-6', 77000, 2, 1, 2, 3, 1 );


--BMW
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('BMW M5 Competition', 'Met een maximaal vermogen van 460 kW (625 pk) en een op prestaties gerichte onderstelafstemming overtreft de BMW M5 Competition met M xDrive de hoogste verwachtingen. De high-performance sportsedan onderstreept dit visueel met talrijke designkenmerken in hoogglans zwart. De BMW M5 beschikt niet alleen over het op maximale tractie en dynamiek afgestelde M xDrive, maar ook over een onderstel dat sportief comfort op lange afstanden biedt. Samen met de 441 kW (600 pk) sterke 8-cilinder M motor ontstaat een met kracht en wendbaarheid doordrenkte rijdynamiek.', '847392056-1', 180000, 1, 2, 1, 1, 2);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('BMW X6', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '274926706-9', 120000 ,1, 3, 1, 5 , 3);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('BMW M3 Touring', 'Pellentesque at nulla. Suspendisse potenti.', '620673298-5', 110000, 2, 1, 2, 3, 1);

--Audi
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Audi RS6', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '206873206-8', 210000 ,1, 3, 1, 5 , 3);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Audi RSQ8', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '564376537-3', 220000, 2, 1, 2, 3, 1);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Audi A4', 'Pellentesque at nulla. Suspendisse potenti.', '947869476-9', 56000, 1, 2, 1, 1, 2);


--Ferrari
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Ferrari SF90 Stradale', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '344769308-4', 800000 ,1, 3, 1, 5 , 3);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Ferrari 812 Superfast', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '655463827-7', 390000, 2, 1, 2, 3, 1);
insert into products (name, description, code, price, stock_id, interest_id, time_id, category, accessoires) values ('Ferrari 488 Pista', 'Pellentesque at nulla. Suspendisse potenti.', '648967489-1', 99000, 1, 2, 1, 1, 2);


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



