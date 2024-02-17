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
  deliverytime_id INTEGER,
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
--deliverytime 1:n relatie
CREATE table deliverytime (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  deliverytime VARCHAR(150)
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
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Mercedes-Benz G63 AMG', 'De vierwielaangedreven auto heeft een benzinemotor en levert een maximum vermogen van 430 kW (585 pk) en een maximum koppel van 850 Nm. Het gemiddeld verbruik bedraagt volgens de fabrikant 16,4 l/100km (1 op 6,1).', '816905633-0', 30000, 'In Stock', 'Regular', 'R., 3 months', 'SUV' , 'A.C., Nav., A.B.');
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Mercedes AMG GT Coupé', 'Het fascinerende design van de nieuwe Mercedes-AMG GT Coupé combineert artistieke authenticiteit, sensuele vormentaal en sportwagenproporties tot een voor het merk typerende performance-statement. Het model is geheel in eigen regie ontwikkeld en toont al bij stilstand op onmiskenbare wijze onze passie voor uitstekende prestaties en opwindende dynamiek. SO AMG. 515 kW/pk Max. vermogen. 800 Nm Koppel. In 3,2 s. Acceleratie (0-100 km/h). tot 315 km/h topsnelheid', '077030122-3', 240000, 'Out of stock', 'New', 'F.S., 6 weeks', 'Coupé' , 'A.C., Nav., A.B.');
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Mercedes-Benz CLA 250 4Matic', 'De vierwielaangedreven auto heeft een benzinemotor en levert een maximum vermogen van 165 kW (224 pk) en een maximum koppel van 350 Nm. Het gemiddeld verbruik bedraagt volgens de fabrikant 6,9 l/100km (1 op 14,5).', '445924201-6', 77000, 'In Stock', 'Best seller', 'R., 3 months', 'Sport' , 'A.C., Nav., A.B.' );

--BMW
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('BMW M5 Competition', 'Met een maximaal vermogen van 460 kW (625 pk) en een op prestaties gerichte onderstelafstemming overtreft de BMW M5 Competition met M xDrive de hoogste verwachtingen. De high-performance sportsedan onderstreept dit visueel met talrijke designkenmerken in hoogglans zwart. De BMW M5 beschikt niet alleen over het op maximale tractie en dynamiek afgestelde M xDrive, maar ook over een onderstel dat sportief comfort op lange afstanden biedt. Samen met de 441 kW (600 pk) sterke 8-cilinder M motor ontstaat een met kracht en wendbaarheid doordrenkte rijdynamiek.', '847392056-1', 180000, 'In Stock', 'New', 'R., 3 months', 'Sedan', 'A.C., Nav., A.B.' );
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('BMW X6', 'In de BMW X6 komen maximale prestaties en rijdynamiek samen met sportief design en luxueuze uitrustingen: krachtige BMW M TwinPower Turbo V8 benzinemotor met 390 kW (530 pk), optimaal rijcomfort dankzij xOffroad Pack en 8-traps Steptronic Sport transmissie, krachtige uitstraling dankzij verlichte BMW nierengrille ‘Iconic Glow’ en standaard M sportpakket, en moderne technologieën en hoogwaardige materialen zoals de glasapplicaties ‘CraftedClarity’.', '274926706-9', 120000 , 'Out of stock', 'Regular', 'F.S., 6 weeks', 'SUV', 'A.C., Nav., A.B.' );
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('BMW M3 Touring', 'Voor het eerst in de geschiedenis van BMW M3, wordt de sportiefste 3 Serie beschikbaar als een stationwagen. Zeg maar hallo tegen de BMW M3 Touring Competition. Bizar goede prestaties in een onweerstaanbare, praktische verpakking. Met 510 pk en xDrive vierwielaandrijving is de BMW M3 Touring een van de snelste stationwagens op de weg, en dat zonder ruimte in te boeten. Maximaal heeft de M3 Touring 1.510 liter bagageruimte.', '620673298-5', 110000, 'In Stock', 'Best seller', 'R., 3 months', 'Sedan' ,'A.C., Nav., A.B.' );

--Audi
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Audi RS6', 'De vierwielaangedreven auto heeft een mild-hybrid benzinemotor en levert een maximum vermogen van 441 kW (600 pk) en een maximum koppel van 800 Nm. Het gemiddeld verbruik bedraagt volgens de fabrikant 12,4 l/100km (1 op 8,1).', '206873206-8', 210000 , 'In Stock', 'Best seller', 'R., 3 months', 'Sport', 'A.C., Nav., A.B.');
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Audi RSQ8', 'De vierwielaangedreven auto heeft een benzinemotor en levert een maximum vermogen van 441 kW (600 pk) en een maximum koppel van 800 Nm. Het gemiddeld verbruik bedraagt volgens de fabrikant 13,2 l/100km (1 op 7,6).', '564376537-3', 220000, 'Out of stock', 'New', 'F.S., 6 weeks',  'SUV, Coupé' , 'A.C., Nav., A.B.');
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Audi S4 TDI Quattro', 'De vierwielaangedreven auto heeft een dieselmotor en levert een maximum vermogen van 251 kW (341 pk) en een maximum koppel van 700 Nm. Het gemiddeld verbruik bedraagt volgens de fabrikant 7,1 l/100km (1 op 14,1).', '947869476-9', 105000, 'In Stock', 'Regular', 'R., 3 months', 'Sedan', 'A.C., Nav., A.B.');


--Ferrari
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Ferrari SF90 Stradale', 'The SF90 Stradale is the first ever Ferrari to feature PHEV (Plug-in Hybrid Electric Vehicle) architecture which sees the internal combustion engine integrated with three electric motors, two of which are independent and located on the front axle, with the third at the rear between the engine and the gearbox. V8 ENGINE. 2.5 sec 0-100 KM/H. 120 kW EDRIVE POWER. 1000 cv MAXIMUM POWER @ 7500 RPM.', '344769308-4', 800000 , 'Out of stock', 'New', 'F.S., 6 weeks', 'Sport', 'A.C., Nav., A.B.');
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Ferrari 812 Superfast', 'The 812 Superfast is the ﬁrst Ferrari to introduce Electric Power Steering (EPS) which, in line with Ferrari tradition, is used to fully exploit the potential of the car in terms of performance by integrating it with all of the electronic vehicle dynamics controls. V12 ENGINE. 2,9 sec 0-100 KM/H. 123 cv/l PECIFIC OUTPUT. 800 cv MAXIMUM POWER.', '655463827-7', 390000, 'In Stock', 'New', 'R., 3 months',  'Sport', 'A.C., Nav., A.B.');
insert into products (name, description, code, price, stock_id, interest_id, deliverytime_id, category, accessoires) values ('Ferrari 488 Pista', 'The Ferrari 488 Pista can punch out 720 cv at 8000 rpm, giving it the best speciﬁc power output in its class at 185 cv/l, while torque is higher at all engine speeds, peaking at 770 Nm (10 Nm more than the 488 GTB). The Ferrari 488 Pista can punch out 720 cv at 8000 rpm, giving it the best speciﬁc power output in its class at 185 cv/l, while torque is higher at all engine speeds, peaking at 770 Nm (10 Nm more than the 488 GTB). V8 ENGINE.2,8 sec 0-100 KM/H. 185 cv/l SPECIFIC POWER OUTPUT. 720 cv MAX. POWER OUTPUT.', '648967489-1', 99000, 'In Stock', 'Best seller', 'R., 3 months', 'Sport' , 'A.C., Nav., A.B.');


--stocks
  insert into stocks (instock) values ('In Stock');
  insert into stocks (instock) values ('Out of stock');
  
--interest 
  insert into interest (interest) values ('Best seller');
  insert into interest (interest) values ('New');
  insert into interest (interest) values ('Regular');

-- R. --> Regular
-- F.S. --> Fast Service

--time
  insert into deliverytime (deliverytime) values ('R., 3 months');
  insert into deliverytime (deliverytime) values ('F.S., 6 weeks');

-- category
  insert into category (category) values ('SUV');
  insert into category (category) values ('Sedan');
  insert into category (category) values ('Coupé');
  insert into category (category) values ('Station Wagon');
  insert into category (category) values ('Supercar');
  insert into category (category) values ('Sport');

-- A.C. --> Air conditioning
-- Nav. --> Navigation
-- A.B. --> Airbag

-- accesoires
  insert into accessoires (accessoires) values ('A.C.');
  insert into accessoires (accessoires) values ('Nav.');
  insert into accessoires (accessoires) values ('A.B.');


