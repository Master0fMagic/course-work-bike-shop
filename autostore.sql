create table firm(
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL);

create table "type"(
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL);

create table dillercenter(
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
address TEXT NOT NULL
)

create table client(
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
login TEXT NOT NULL,
password TEXT NOT NULL,
registrationdate UNSIGNED BIG INT DEFAULT ( CAST(strftime('%s', 'now') AS UNSIGNED BIG INT))
);

create table bike(
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
typeid INTEGER NOT NULL,
firmid INTEGER NOT NULL,
model TEXT NOT NULL,
frame TEXT NOT NULL,
seat TEXT NOT NULL,
brakes TEXT NOT NULL,
"chain" TEXT NOT NULL,
image TEXT NOT NULL,
FOREIGN KEY(typeid) REFERENCES "type"(id),
FOREIGN KEY(firmid) REFERENCES firm(id)
);


create table dillercenterbike(
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
bikeid INTEGER NOT NULL,
dillercenterid NOT NULL
)


create table testdrives(
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
autoid INTEGER NOT NULL,
dillercenterid INTEGER NOT NULL,
testdrivedate  UNSIGNED BIG INT NOT NULL,
clientid INTEGER NOT NULL,
status BOOLEAN DEFAULT FALSE,
FOREIGN KEY(autoid) REFERENCES auto(id),
FOREIGN KEY(clientid) REFERENCES client(id),
FOREIGN KEY(dillercenterid) REFERENCES dillercenter(id)
);


INSERT INTO firm(name) VALUES
("BH"),
("Cannondale CAAD"),
("BIANCHI"),
("TRINX"),
("BATTLE"),
("Cube Nuroad");

INSERT INTO "type"(name) VALUES
("шосейний"),
("горний"),
("складний"),
("туристичний");


INSERT INTO client(login, password) VALUES
("test1", "123123"),
("test2", "123123"),
("test", "123123");

INSERT INTO bike(typeid, firmid, model, frame, seat, brakes, "chain", image) VALUES
(1,1, 'G7 Pro', 'Global Concept G7 Pro Carbon Monocoque', 'Prologo Kappa RS', 'Shimano Ultegra DM', 'FSA TH-CN1102', ''),
(1,2, 'Optimo 4', 'SmartForm C2 Alloy', 'Cannondale Stage CX', 'Promax RC-452', 'Shimano HG71', ''),
(2,3, 'Specialissima CV Ultegra Di2 11s Stages LR', 'BIANCHI Specialissima 57cm Celeste', 'Shimano Ultegra DI2 R8050 11 s', 'BIANCHI Fizik Arione R3 304x126mm Black', 'SHIMANO CN-HG701', ''),
(3,4 , 'Dolphin 1.0', 'Shimano', 'Trinx Comfort', 'Tektro', 'M30 7S', ''),
(3,5 , 'E300 7', 'E300 frame', 'Hollow Thickened Wide-tailed', 'SHIMANO', 'Chengshin', ''),
(4,6 , 'Race FE 28', 'Aluminium 6061 T6 Superlite', 'Natural Fit Venec Lite', ' Shimano BR-RX400', 'Shimano CN-HG600-11', '');


INSERT INTO dillercenter(name, address) VALUES
("Cental center", "м.Харків, вул.Сумська, 90"),
("Bikes for soul", "м.Київ, вул.Хрещатик, 17"),
("Every day bikes", "м.Харків, пр.Героїв Харкова, 327"),
("Best bikes", "м.Львів, вул.Героїв України, 25");

INSERT INTO dillercenterbike (bikeid  , dillercenterid) VALUES
(1, 2),
(2, 2),
(3, 3),
(4, 3),
(4, 4),
(5, 1),
(5, 3),
(6, 1);










