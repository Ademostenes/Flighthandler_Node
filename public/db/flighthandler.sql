
CREATE SCHEMA flighthandler;
USE flighthandler;

CREATE TABLE languaje (
id INT AUTO_INCREMENT NOT NULL UNIQUE,
languajeName VARCHAR(50) NOT NULL,
CONSTRAINT PK_Lang PRIMARY KEY (id)
);

CREATE TABLE continent (
id INT AUTO_INCREMENT NOT NULL UNIQUE,
continentName VARCHAR(60) NOT NULL,
languajeId INT NOT NULL,
CONSTRAINT PK_Cont PRIMARY KEY (id)
);


CREATE TABLE country (
id INT AUTO_INCREMENT NOT NULL UNIQUE,
countryName VARCHAR(50) NOT NULL,
continentId INT NOT NULL,
languajeId INT NOT NULL,
CONSTRAINT PK_Count PRIMARY KEY (id)
);


CREATE TABLE flags (
id INT AUTO_INCREMENT NOT NULL UNIQUE,
countryId INT NOT NULL,
descrtipt TEXT,
src TEXT,
CONSTRAINT PK_Flags PRIMARY KEY (id)
);

CREATE TABLE usuario (
id INT AUTO_INCREMENT NOT NULL UNIQUE,
userName VARCHAR(50) UNIQUE NOT NULL,
userPass VARCHAR(40) NOT NULL,
firstname VARCHAR(80) NOT NULL,
lastname VARCHAR(80) NOT NULL,
email VARCHAR(120) UNIQUE,
phone VARCHAR(50),
idnumber VARCHAR(25),
countryId INT,
CONSTRAINT PK_U PRIMARY KEY (id)
);

-- INSERT lenguajes

insert into languaje (languajeName) values ('Español');
insert into languaje (languajeName) values ('Inglés');
insert into languaje (languajeName) values ('Alemán');
insert into languaje (languajeName) values ('Ruso');
insert into languaje (languajeName) values ('Chino Tradicional');
insert into languaje (languajeName) values ('Chuncano');
insert into languaje (languajeName) values ('Francés');
insert into languaje (languajeName) values ('Italiano');
insert into languaje (languajeName) values ('Chino Mandarín');
insert into languaje (languajeName) values ('Griego');

-- INSERT continent en dif. idiomas

-- En español
insert into continent (continentName, languajeId) values ('Europa', 1);
insert into continent (continentName, languajeId) values ('América', 1);
insert into continent (continentName, languajeId) values ('Oceanía', 1);
insert into continent (continentName, languajeId) values ('Asia', 1);
insert into continent (continentName, languajeId) values ('África', 1);

-- En inglés
insert into continent (continentName, languajeId) values ('Europe', 2);
insert into continent (continentName, languajeId) values ('America', 2);
insert into continent (continentName, languajeId) values ('Oceania', 2);
insert into continent (continentName, languajeId) values ('Asia', 2);
insert into continent (continentName, languajeId) values ('Africa', 2);
-- En Alemán
insert into continent (continentName, languajeId) values ('Europe', 3);
insert into continent (continentName, languajeId) values ('Amerika', 3);
insert into continent (continentName, languajeId) values ('Ozeanien', 3);
insert into continent (continentName, languajeId) values ('Asien', 3);
insert into continent (continentName, languajeId) values ('Afrika', 2);
-- En Ruso
insert into continent (continentName, languajeId) values ('Европа', 4);
insert into continent (continentName, languajeId) values ('Америка', 4);
insert into continent (continentName, languajeId) values ('Океания', 4);
insert into continent (continentName, languajeId) values ('Азия', 4);
insert into continent (continentName, languajeId) values ('Африка', 4);



-- INSERT country

insert into country (countryName, continentId, languajeId) values ('China', 1, 4);
insert into country (countryName, continentId, languajeId) values ('South Korea', 5, 10);
insert into country (countryName, continentId, languajeId) values ('Brazil', 1, 2);
insert into country (countryName, continentId, languajeId) values ('Portugal', 2, 8);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 2, 6);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 4, 6);
insert into country (countryName, continentId, languajeId) values ('United States', 1, 1);
insert into country (countryName, continentId, languajeId) values ('Democratic Republic of the Congo', 1, 6);
insert into country (countryName, continentId, languajeId) values ('Sweden', 2, 5);
insert into country (countryName, continentId, languajeId) values ('Palestinian Territory', 1, 8);
insert into country (countryName, continentId, languajeId) values ('Pakistan', 3, 2);
insert into country (countryName, continentId, languajeId) values ('Ukraine', 5, 2);
insert into country (countryName, continentId, languajeId) values ('Peru', 1, 6);
insert into country (countryName, continentId, languajeId) values ('China', 2, 7);
insert into country (countryName, continentId, languajeId) values ('Brazil', 4, 2);
insert into country (countryName, continentId, languajeId) values ('Brazil', 1, 10);
insert into country (countryName, continentId, languajeId) values ('Mongolia', 5, 10);
insert into country (countryName, continentId, languajeId) values ('Azerbaijan', 3, 5);
insert into country (countryName, continentId, languajeId) values ('France', 5, 8);
insert into country (countryName, continentId, languajeId) values ('Poland', 5, 5);
insert into country (countryName, continentId, languajeId) values ('Russia', 3, 10);
insert into country (countryName, continentId, languajeId) values ('Russia', 5, 3);
insert into country (countryName, continentId, languajeId) values ('China', 4, 8);
insert into country (countryName, continentId, languajeId) values ('Vietnam', 3, 3);
insert into country (countryName, continentId, languajeId) values ('Saudi Arabia', 4, 5);
insert into country (countryName, continentId, languajeId) values ('Philippines', 5, 10);
insert into country (countryName, continentId, languajeId) values ('Sweden', 1, 10);
insert into country (countryName, continentId, languajeId) values ('Poland', 5, 9);
insert into country (countryName, continentId, languajeId) values ('China', 3, 1);
insert into country (countryName, continentId, languajeId) values ('Poland', 5, 8);
insert into country (countryName, continentId, languajeId) values ('Thailand', 4, 8);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 4, 3);
insert into country (countryName, continentId, languajeId) values ('Afghanistan', 3, 4);
insert into country (countryName, continentId, languajeId) values ('Portugal', 2, 4);
insert into country (countryName, continentId, languajeId) values ('Russia', 1, 6);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 1, 2);
insert into country (countryName, continentId, languajeId) values ('Yemen', 4, 7);
insert into country (countryName, continentId, languajeId) values ('Philippines', 3, 10);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 2, 9);
insert into country (countryName, continentId, languajeId) values ('China', 5, 6);
insert into country (countryName, continentId, languajeId) values ('China', 1, 5);
insert into country (countryName, continentId, languajeId) values ('Philippines', 5, 7);
insert into country (countryName, continentId, languajeId) values ('Serbia', 1, 7);
insert into country (countryName, continentId, languajeId) values ('France', 4, 8);
insert into country (countryName, continentId, languajeId) values ('Thailand', 4, 1);
insert into country (countryName, continentId, languajeId) values ('Russia', 4, 1);
insert into country (countryName, continentId, languajeId) values ('Colombia', 4, 9);
insert into country (countryName, continentId, languajeId) values ('China', 5, 6);
insert into country (countryName, continentId, languajeId) values ('Uganda', 1, 4);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 5, 4);
insert into country (countryName, continentId, languajeId) values ('Nigeria', 1, 8);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 3, 8);
insert into country (countryName, continentId, languajeId) values ('Pakistan', 1, 8);
insert into country (countryName, continentId, languajeId) values ('Brazil', 4, 9);
insert into country (countryName, continentId, languajeId) values ('Malaysia', 2, 9);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 1, 1);
insert into country (countryName, continentId, languajeId) values ('Uzbekistan', 4, 4);
insert into country (countryName, continentId, languajeId) values ('Colombia', 1, 4);
insert into country (countryName, continentId, languajeId) values ('Russia', 2, 3);
insert into country (countryName, continentId, languajeId) values ('Russia', 3, 10);
insert into country (countryName, continentId, languajeId) values ('Vietnam', 3, 7);
insert into country (countryName, continentId, languajeId) values ('Norway', 4, 6);
insert into country (countryName, continentId, languajeId) values ('United States', 3, 2);
insert into country (countryName, continentId, languajeId) values ('Czech Republic', 2, 4);
insert into country (countryName, continentId, languajeId) values ('China', 3, 9);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 1, 7);
insert into country (countryName, continentId, languajeId) values ('Philippines', 1, 6);
insert into country (countryName, continentId, languajeId) values ('Djibouti', 5, 8);
insert into country (countryName, continentId, languajeId) values ('Thailand', 3, 9);
insert into country (countryName, continentId, languajeId) values ('Portugal', 1, 9);
insert into country (countryName, continentId, languajeId) values ('China', 2, 6);
insert into country (countryName, continentId, languajeId) values ('Malta', 5, 4);
insert into country (countryName, continentId, languajeId) values ('Greece', 5, 2);
insert into country (countryName, continentId, languajeId) values ('Albania', 5, 1);
insert into country (countryName, continentId, languajeId) values ('Guinea', 1, 10);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 5, 2);
insert into country (countryName, continentId, languajeId) values ('Canada', 1, 4);
insert into country (countryName, continentId, languajeId) values ('China', 2, 8);
insert into country (countryName, continentId, languajeId) values ('Germany', 3, 6);
insert into country (countryName, continentId, languajeId) values ('Russia', 3, 8);
insert into country (countryName, continentId, languajeId) values ('China', 3, 3);
insert into country (countryName, continentId, languajeId) values ('China', 3, 7);
insert into country (countryName, continentId, languajeId) values ('Libya', 4, 6);
insert into country (countryName, continentId, languajeId) values ('Costa Rica', 3, 6);
insert into country (countryName, continentId, languajeId) values ('France', 4, 3);
insert into country (countryName, continentId, languajeId) values ('Nigeria', 5, 4);
insert into country (countryName, continentId, languajeId) values ('Norway', 4, 4);
insert into country (countryName, continentId, languajeId) values ('Philippines', 5, 1);
insert into country (countryName, continentId, languajeId) values ('Philippines', 1, 6);
insert into country (countryName, continentId, languajeId) values ('Tajikistan', 1, 5);
insert into country (countryName, continentId, languajeId) values ('Japan', 2, 6);
insert into country (countryName, continentId, languajeId) values ('Afghanistan', 2, 7);
insert into country (countryName, continentId, languajeId) values ('Russia', 4, 8);
insert into country (countryName, continentId, languajeId) values ('Mozambique', 2, 1);
insert into country (countryName, continentId, languajeId) values ('Russia', 3, 8);
insert into country (countryName, continentId, languajeId) values ('Monaco', 1, 6);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 1, 4);
insert into country (countryName, continentId, languajeId) values ('Philippines', 2, 5);
insert into country (countryName, continentId, languajeId) values ('Egypt', 4, 5);
insert into country (countryName, continentId, languajeId) values ('Russia', 3, 7);
insert into country (countryName, continentId, languajeId) values ('Myanmar', 1, 8);
insert into country (countryName, continentId, languajeId) values ('China', 5, 1);
insert into country (countryName, continentId, languajeId) values ('Vietnam', 2, 5);
insert into country (countryName, continentId, languajeId) values ('China', 3, 5);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 2, 8);
insert into country (countryName, continentId, languajeId) values ('Palestinian Territory', 3, 3);
insert into country (countryName, continentId, languajeId) values ('China', 4, 6);
insert into country (countryName, continentId, languajeId) values ('Senegal', 1, 9);
insert into country (countryName, continentId, languajeId) values ('China', 3, 2);
insert into country (countryName, continentId, languajeId) values ('China', 1, 8);
insert into country (countryName, continentId, languajeId) values ('Brazil', 4, 4);
insert into country (countryName, continentId, languajeId) values ('China', 3, 8);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 4, 2);
insert into country (countryName, continentId, languajeId) values ('Sweden', 5, 6);
insert into country (countryName, continentId, languajeId) values ('Colombia', 5, 2);
insert into country (countryName, continentId, languajeId) values ('Argentina', 5, 4);
insert into country (countryName, continentId, languajeId) values ('China', 1, 8);
insert into country (countryName, continentId, languajeId) values ('Philippines', 1, 6);
insert into country (countryName, continentId, languajeId) values ('Peru', 4, 4);
insert into country (countryName, continentId, languajeId) values ('Poland', 4, 4);
insert into country (countryName, continentId, languajeId) values ('Portugal', 4, 4);
insert into country (countryName, continentId, languajeId) values ('Russia', 1, 6);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 5, 8);
insert into country (countryName, continentId, languajeId) values ('Morocco', 5, 6);
insert into country (countryName, continentId, languajeId) values ('Czech Republic', 4, 3);
insert into country (countryName, continentId, languajeId) values ('Lithuania', 4, 7);
insert into country (countryName, continentId, languajeId) values ('Canada', 5, 8);
insert into country (countryName, continentId, languajeId) values ('Nigeria', 3, 10);
insert into country (countryName, continentId, languajeId) values ('Cyprus', 2, 8);
insert into country (countryName, continentId, languajeId) values ('France', 1, 7);
insert into country (countryName, continentId, languajeId) values ('Israel', 2, 1);
insert into country (countryName, continentId, languajeId) values ('Ukraine', 5, 8);
insert into country (countryName, continentId, languajeId) values ('Portugal', 5, 4);
insert into country (countryName, continentId, languajeId) values ('Russia', 5, 5);
insert into country (countryName, continentId, languajeId) values ('Philippines', 4, 4);
insert into country (countryName, continentId, languajeId) values ('Sudan', 3, 2);
insert into country (countryName, continentId, languajeId) values ('Cameroon', 2, 2);
insert into country (countryName, continentId, languajeId) values ('China', 2, 4);
insert into country (countryName, continentId, languajeId) values ('Russia', 2, 3);
insert into country (countryName, continentId, languajeId) values ('Brazil', 5, 4);
insert into country (countryName, continentId, languajeId) values ('China', 4, 7);
insert into country (countryName, continentId, languajeId) values ('Serbia', 3, 7);
insert into country (countryName, continentId, languajeId) values ('Russia', 3, 2);
insert into country (countryName, continentId, languajeId) values ('Kenya', 5, 7);
insert into country (countryName, continentId, languajeId) values ('Brazil', 2, 2);
insert into country (countryName, continentId, languajeId) values ('Yemen', 2, 6);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 2, 8);
insert into country (countryName, continentId, languajeId) values ('China', 4, 10);
insert into country (countryName, continentId, languajeId) values ('Bulgaria', 4, 7);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 1, 6);
insert into country (countryName, continentId, languajeId) values ('Iran', 2, 10);
insert into country (countryName, continentId, languajeId) values ('Tunisia', 4, 2);
insert into country (countryName, continentId, languajeId) values ('Mexico', 5, 5);
insert into country (countryName, continentId, languajeId) values ('China', 1, 1);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 2, 9);
insert into country (countryName, continentId, languajeId) values ('Poland', 2, 3);
insert into country (countryName, continentId, languajeId) values ('China', 5, 6);
insert into country (countryName, continentId, languajeId) values ('Norway', 4, 2);
insert into country (countryName, continentId, languajeId) values ('Thailand', 5, 1);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 3, 10);
insert into country (countryName, continentId, languajeId) values ('Portugal', 5, 7);
insert into country (countryName, continentId, languajeId) values ('China', 3, 1);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 2, 7);
insert into country (countryName, continentId, languajeId) values ('Iran', 5, 1);
insert into country (countryName, continentId, languajeId) values ('France', 3, 9);
insert into country (countryName, continentId, languajeId) values ('Kenya', 1, 10);
insert into country (countryName, continentId, languajeId) values ('Sweden', 1, 9);
insert into country (countryName, continentId, languajeId) values ('China', 5, 8);
insert into country (countryName, continentId, languajeId) values ('China', 4, 9);
insert into country (countryName, continentId, languajeId) values ('Philippines', 3, 3);
insert into country (countryName, continentId, languajeId) values ('China', 2, 4);
insert into country (countryName, continentId, languajeId) values ('Philippines', 4, 6);
insert into country (countryName, continentId, languajeId) values ('France', 2, 2);
insert into country (countryName, continentId, languajeId) values ('Ireland', 1, 4);
insert into country (countryName, continentId, languajeId) values ('Canada', 5, 3);
insert into country (countryName, continentId, languajeId) values ('China', 2, 7);
insert into country (countryName, continentId, languajeId) values ('Sweden', 1, 8);
insert into country (countryName, continentId, languajeId) values ('Argentina', 2, 1);
insert into country (countryName, continentId, languajeId) values ('Philippines', 2, 9);
insert into country (countryName, continentId, languajeId) values ('Philippines', 4, 1);
insert into country (countryName, continentId, languajeId) values ('Guatemala', 3, 10);
insert into country (countryName, continentId, languajeId) values ('Philippines', 2, 7);
insert into country (countryName, continentId, languajeId) values ('Haiti', 5, 7);
insert into country (countryName, continentId, languajeId) values ('China', 3, 8);
insert into country (countryName, continentId, languajeId) values ('Colombia', 3, 2);
insert into country (countryName, continentId, languajeId) values ('Myanmar', 3, 8);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 5, 2);
insert into country (countryName, continentId, languajeId) values ('China', 4, 8);
insert into country (countryName, continentId, languajeId) values ('Nigeria', 1, 3);
insert into country (countryName, continentId, languajeId) values ('Bosnia and Herzegovina', 5, 2);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 3, 7);
insert into country (countryName, continentId, languajeId) values ('Peru', 2, 6);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 3, 5);
insert into country (countryName, continentId, languajeId) values ('Croatia', 5, 2);
insert into country (countryName, continentId, languajeId) values ('Chile', 3, 4);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 3, 9);
insert into country (countryName, continentId, languajeId) values ('United States', 3, 3);
insert into country (countryName, continentId, languajeId) values ('Indonesia', 3, 10);
insert into country (countryName, continentId, languajeId) values ('Philippines', 1, 1);
insert into country (countryName, continentId, languajeId) values ('Tanzania', 1, 2);



-- INSERT USUARIOS

insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('achasen0', 'nQ3.Aj$j''jg', 'Alene', 'Chasen', 'achasen0@go.com', '+86 (587) 414-8615', 38715383, 68);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('afearfull1', 'gV9$Zn}.(D', 'Arabela', 'Fearfull', 'afearfull1@barnesandnoble.com', '+254 (472) 812-8270', 37059372, 18);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mblaydes2', 'vF5}OWmWGbIl.4oA', 'Merrile', 'Blaydes', 'mblaydes2@webmd.com', '+66 (572) 125-6031', 28432446, 32);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bclaughton3', 'lT5$Y&17jd', 'Brandy', 'Claughton', 'bclaughton3@upenn.edu', '+30 (506) 687-8761', 31270645, 23);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mbirrane4', 'zL4~,6cY9vRrWNeR', 'Marjorie', 'Birrane', 'mbirrane4@spiegel.de', '+27 (934) 152-0091', 32447801, 52);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cletten5', 'jZ6\EXaFhqaJgEP9', 'Celestyna', 'Letten', 'cletten5@storify.com', '+62 (725) 352-6173', 60897282, 11);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('msherburn6', 'aU5$Dr}(5>`', 'Matti', 'Sherburn', 'msherburn6@springer.com', '+86 (475) 924-8732', 50067520, 55);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('shefner7', 'rE6#_vkx}jet%_K', 'Suzanna', 'Hefner', 'shefner7@geocities.com', '+33 (180) 231-4674', 35601487, 84);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mhewell8', 'bN4>`<7L@G"', 'Miguela', 'Hewell', 'mhewell8@wikimedia.org', '+7 (936) 136-3377', 23800248, 34);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('acorner9', 'bZ6#viHeBQ#lv', 'Amabelle', 'Corner', 'acorner9@netvibes.com', '+7 (517) 991-1680', 31984565, 25);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ttowla', 'eT9''h,J8MxYs$s%', 'Tamra', 'Towl', 'ttowla@is.gd', '+98 (592) 557-9676', 24689125, 43);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('msutheranb', 'wH7&g*EQ', 'Merry', 'Sutheran', 'msutheranb@patch.com', '+502 (244) 885-5990', 52335334, 95);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('eorrumc', 'iI3`z(C6}\NG', 'Eugenie', 'Orrum', 'eorrumc@printfriendly.com', '+351 (571) 336-6791', 53473855, 62);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('blabittd', 'sL2~`OAN''Od''RGd$', 'Betsey', 'Labitt', 'blabittd@etsy.com', '+32 (147) 690-1459', 56033548, 37);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('gpetrice', 'fI5|(vYzWW', 'Gavan', 'Petric', 'gpetrice@patch.com', '+853 (256) 279-8428', 42993317, 41);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('amarchingtonf', 'yZ3''g3@.', 'Antonius', 'Marchington', 'amarchingtonf@miitbeian.gov.cn', '+48 (385) 690-3941', 22474298, 68);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('nmccurrieg', 'tJ5~4A52tmtG', 'Niki', 'McCurrie', 'nmccurrieg@stanford.edu', '+36 (666) 487-7108', 60688462, 9);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('trobjentsh', 'oZ9"|}!Y8Xq', 'Tova', 'Robjents', 'trobjentsh@msu.edu', '+86 (323) 468-7877', 31931712, 41);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('gsheersi', 'lI0\.{"8VQMk', 'Genia', 'Sheers', 'gsheersi@cisco.com', '+31 (614) 657-3247', 22006922, 32);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('tdawtryj', 'rJ9#=6,9za!I', 'Theodosia', 'Dawtry', 'tdawtryj@opera.com', '+351 (419) 570-2467', 28284517, 15);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('disakovk', 'iP3}3YWd6txK5a', 'Dasie', 'Isakov', 'disakovk@pbs.org', '+86 (954) 155-5103', 36689915, 33);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mtyerl', 'lG6\>sXQ.)Y', 'Mead', 'Tyer', 'mtyerl@marriott.com', '+86 (179) 596-5366', 56046737, 46);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cmclauchlinm', 'bL6?9aZ,&`N`', 'Cullie', 'McLauchlin', 'cmclauchlinm@dailymail.co.uk', '+252 (669) 125-3601', 16382199, 13);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bhurworthn', 'yK2%p+0tVm@Sg', 'Brad', 'Hurworth', 'bhurworthn@apple.com', '+86 (595) 960-5223', 15446156, 41);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('amcclymondo', 'qU1}''W%+IBf5}*', 'Adore', 'McClymond', 'amcclymondo@dagondesign.com', '+63 (658) 860-9263', 15157969, 83);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cstroobantp', 'sT5~Ol&W<H{Gs', 'Claudette', 'Stroobant', 'cstroobantp@usnews.com', '+86 (344) 394-6413', 25278074, 60);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ccastelloq', 'jR0{erkccwc|3$?a', 'Cherey', 'Castello', 'ccastelloq@senate.gov', '+351 (269) 131-0991', 42780410, 51);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cjuzar', 'lM3?Qwifs4X', 'Coralyn', 'Juza', 'cjuzar@fastcompany.com', '+86 (565) 578-7418', 16973179, 95);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hredmires', 'eE5\(yEt?''e', 'Humfrey', 'Redmire', 'hredmires@technorati.com', '+47 (241) 575-9838', 28638923, 62);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('avigurst', 'cS3"3u+r?w', 'Ally', 'Vigurs', 'avigurst@desdev.cn', '+62 (193) 203-5054', 58609469, 48);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('gdeversonu', 'mD2)`@rU', 'Goldi', 'Deverson', 'gdeversonu@nhs.uk', '+370 (680) 443-8162', 17182244, 49);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('fdelberguev', 'qI7\PF#j5W&@b3vJ', 'Frants', 'Delbergue', 'fdelberguev@google.ru', '+62 (756) 289-9082', 42269662, 18);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('fpavlishchevw', 'oQ1{o*q.v#.w', 'Fee', 'Pavlishchev', 'fpavlishchevw@seattletimes.com', '+1 (845) 673-3085', 18527043, 35);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bspibyx', 'kC5(3BfdU0$Gd#a', 'Bunnie', 'Spiby', 'bspibyx@ovh.net', '+1 (523) 687-3702', 41092748, 64);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lschuley', 'bY9#t,5URI6r=|qQ', 'Lynea', 'Schule', 'lschuley@so-net.ne.jp', '+93 (708) 514-8620', 36981378, 29);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cwilleyz', 'eF2%UmLe8+0CZrSy', 'Carree', 'Willey', 'cwilleyz@spiegel.de', '+81 (653) 976-7375', 28548069, 71);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('wlesslie10', 'eG4@V|#H_\R?qe6', 'Wanids', 'Lesslie', 'wlesslie10@prnewswire.com', '+66 (641) 523-5354', 44146068, 15);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('dmachon11', 'qS6|CPQg6', 'Dexter', 'Machon', 'dmachon11@goo.ne.jp', '+355 (103) 660-5427', 38073363, 88);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mblaske12', 'iN6{X@AFk(/.''a', 'Marlo', 'Blaske', 'mblaske12@issuu.com', '+86 (579) 256-8519', 58241394, 32);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('miskower13', 'sZ9#z_\}e', 'Mireielle', 'Iskower', 'miskower13@alexa.com', '+351 (113) 231-0620', 19996242, 25);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rheinel14', 'iU4)(8\i(V67<hO|', 'Ryun', 'Heinel', 'rheinel14@illinois.edu', '+598 (832) 212-9177', 49004317, 46);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('jschimann15', 'fA6.Tn/I(38', 'Jayme', 'Schimann', 'jschimann15@exblog.jp', '+86 (685) 200-6792', 25150208, 37);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('pcancellor16', 'zB6!#TCd+SV6J', 'Pier', 'Cancellor', 'pcancellor16@shutterfly.com', '+420 (415) 527-6282', 25247831, 89);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bcapaldi17', 'iU9!S~Qw''|Y', 'Baird', 'Capaldi', 'bcapaldi17@ibm.com', '+58 (355) 246-9993', 38062706, 14);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lforson18', 'kL9%R~eV3b($)', 'Liva', 'Forson', 'lforson18@icq.com', '+351 (598) 830-9395', 29677783, 41);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cpexton19', 'fF3&yt\x', 'Casper', 'Pexton', 'cpexton19@surveymonkey.com', '+46 (223) 137-5261', 52341189, 42);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('tmcpolin1a', 'xV1''e&z>ARC%', 'Torry', 'McPolin', 'tmcpolin1a@flavors.me', '+374 (541) 892-9297', 40006389, 51);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bnapoleone1b', 'zL7<?wMgaCBoD!c', 'Buddie', 'Napoleone', 'bnapoleone1b@utexas.edu', '+62 (982) 807-4444', 53246838, 76);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('aduckerin1c', 'yF1\|9isB}2)', 'Addison', 'Duckerin', 'aduckerin1c@webeden.co.uk', '+963 (941) 949-9792', 38612989, 15);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('wsporton1d', 'fA2|/GCyL?*VMpH', 'Welbie', 'Sporton', 'wsporton1d@dion.ne.jp', '+55 (914) 934-9868', 52708938, 61);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rathridge1e', 'vM1!PWQuEkc8F', 'Rita', 'Athridge', 'rathridge1e@weebly.com', '+81 (919) 550-8585', 61954190, 97);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lgull1f', 'cN6)%xSaqZ', 'Laurel', 'Gull', 'lgull1f@bravesites.com', '+420 (646) 585-4494', 18268953, 43);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('pchalliss1g', 'uF6$p!|1qN}}nG', 'Putnem', 'Challiss', 'pchalliss1g@twitter.com', '+963 (178) 180-8424', 20321643, 52);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('fvampouille1h', 'jW6''f$xm{x>', 'Frieda', 'Vampouille', 'fvampouille1h@reverbnation.com', '+62 (329) 885-7696', 44112126, 44);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('sgerry1i', 'nN9{|2!zn/,YC1M', 'Sonni', 'Gerry', 'sgerry1i@rakuten.co.jp', '+55 (316) 959-7322', 49875311, 33);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('tcarillo1j', 'mC6,|<mMv', 'Tulley', 'Carillo', 'tcarillo1j@cnet.com', '+62 (447) 258-2096', 60557080, 45);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('wrennenbach1k', 'bP5%6cX3I`s', 'Winnie', 'Rennenbach', 'wrennenbach1k@soundcloud.com', '+86 (618) 206-8485', 17232696, 98);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hbagshaw1l', 'hP9@rVilWm"bd', 'Herbie', 'Bagshaw', 'hbagshaw1l@ezinearticles.com', '+63 (648) 127-1238', 15261586, 71);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('vparsall1m', 'kB9+er@2!PhX', 'Verney', 'Parsall', 'vparsall1m@ocn.ne.jp', '+63 (261) 524-8352', 31707831, 27);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mflute1n', 'rY3~Z,}d{', 'Minda', 'Flute', 'mflute1n@addtoany.com', '+45 (466) 463-8903', 55052547, 94);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lclarson1o', 'iJ0+GaJr"U', 'Lauritz', 'Clarson', 'lclarson1o@ibm.com', '+48 (681) 525-5819', 19532408, 99);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bstoller1p', 'hX6@!\RZ', 'Benjamen', 'Stoller', 'bstoller1p@army.mil', '+48 (257) 942-0068', 51822562, 41);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hdanielis1q', 'oC1{V1HM.1', 'Hester', 'Danielis', 'hdanielis1q@fda.gov', '+57 (543) 899-9391', 40730096, 19);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('colivari1r', 'pV6|mkGd$A9', 'Carey', 'Olivari', 'colivari1r@google.fr', '+81 (512) 742-0425', 17802532, 94);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kspark1s', 'yW7!T>ApLkpD', 'Kirbee', 'Spark', 'kspark1s@devhub.com', '+48 (711) 487-6558', 52794557, 52);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('holdred1t', 'mK4#7CEA7X7Y', 'Hinda', 'Oldred', 'holdred1t@rediff.com', '+880 (419) 705-7623', 30867906, 67);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lswannack1u', 'cF7<HhC|8', 'Llywellyn', 'Swannack', 'lswannack1u@elegantthemes.com', '+60 (644) 354-5439', 23308536, 79);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('drapier1v', 'qM5?zDAl~~', 'Drusy', 'Rapier', 'drapier1v@timesonline.co.uk', '+86 (622) 600-3515', 22810042, 44);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('gmeffen1w', 'qY1,UpVtuWjv+t|7', 'Gil', 'Meffen', 'gmeffen1w@phpbb.com', '+86 (155) 286-1394', 45663413, 5);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('asewley1x', 'lV6\nnVh3"Bi=*!@', 'Anna-diana', 'Sewley', 'asewley1x@jugem.jp', '+63 (144) 941-2704', 13563675, 61);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rnornable1y', 'pI8&w=ir2Sg1}uF', 'Ralina', 'Nornable', 'rnornable1y@gravatar.com', '+850 (388) 896-1440', 40655196, 31);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('csample1z', 'fN1`kG''7aiYuV', 'Courtnay', 'Sample', 'csample1z@baidu.com', '+86 (428) 642-2544', 58084875, 100);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ismalridge20', 'dJ1~m<QlzflfG~*', 'Illa', 'Smalridge', 'ismalridge20@freewebs.com', '+55 (356) 956-8232', 51098164, 34);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('pyellowley21', 'xW5}oGZBc41cQI5', 'Phil', 'Yellowley', 'pyellowley21@goo.gl', '+52 (968) 914-5382', 38222975, 43);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('zbendall22', 'cK3$Z"%C', 'Zena', 'Bendall', 'zbendall22@mlb.com', '+238 (883) 262-0047', 59044572, 86);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kmaystone23', 'kL9/xut*''RJ', 'Kameko', 'Maystone', 'kmaystone23@tripadvisor.com', '+55 (686) 684-8943', 23989280, 94);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hstainson24', 'yM0<"XUm', 'Helsa', 'Stainson', 'hstainson24@desdev.cn', '+261 (515) 416-4832', 34244335, 47);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kdamsell25', 'gI4.1+<Orm7', 'Killie', 'Damsell', 'kdamsell25@deliciousdays.com', '+39 (850) 917-8529', 13946751, 29);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rswinnerton26', 'oG2<sq}nH`H', 'Robbin', 'Swinnerton', 'rswinnerton26@loc.gov', '+359 (555) 100-6236', 41160918, 89);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mleyborne27', 'mT6\k"Xb)VW+M"D', 'Massimo', 'Leyborne', 'mleyborne27@mtv.com', '+381 (589) 847-4602', 40555337, 83);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lbromige28', 'rA7&j<r?l?=?', 'Livy', 'Bromige', 'lbromige28@yahoo.com', '+7 (927) 730-3125', 40240008, 52);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('wmarunchak29', 'tH7}@YUp!VBJGz/', 'Whitman', 'Marunchak', 'wmarunchak29@unc.edu', '+86 (172) 953-8081', 22135188, 55);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('tshekle2a', 'bD9`}~4xM8(fDu3m', 'Trent', 'Shekle', 'tshekle2a@histats.com', '+62 (123) 640-4227', 32261356, 35);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mmancer2b', 'zH2&GE{{>', 'Margot', 'Mancer', 'mmancer2b@noaa.gov', '+86 (388) 459-5282', 39584578, 24);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('amunson2c', 'kI0/\YNS\ozwz', 'Alair', 'Munson', 'amunson2c@chronoengine.com', '+86 (110) 283-3691', 33867424, 68);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('tchamberlayne2d', 'rM2{1+tt\SqJz''d5', 'Traver', 'Chamberlayne', 'tchamberlayne2d@forbes.com', '+380 (234) 223-9203', 39979886, 6);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('dbradley2e', 'bS8+q,V5CC@k/<<F', 'Dougie', 'Bradley', 'dbradley2e@uol.com.br', '+971 (779) 822-9977', 57699957, 18);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('atregear2f', 'zH4#mLC!+y\#r+D', 'Allx', 'Tregear', 'atregear2f@cmu.edu', '+380 (749) 609-3667', 15636681, 31);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('fmcvicar2g', 'sO4%gI''UMMR+}*E', 'Fransisco', 'McVicar', 'fmcvicar2g@comcast.net', '+374 (638) 838-7381', 53420717, 92);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('dkynder2h', 'lV2%1B"=3j1WA>', 'Daryl', 'Kynder', 'dkynder2h@tinyurl.com', '+86 (692) 408-8766', 52816326, 47);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('aiglesia2i', 'dI2"j}0{l', 'Artus', 'Iglesia', 'aiglesia2i@cnbc.com', '+86 (189) 906-2879', 61036883, 59);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('nwinslow2j', 'gQ5$SSw7QNbSz', 'Nicolai', 'Winslow', 'nwinslow2j@naver.com', '+62 (245) 809-2681', 20425325, 14);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kbrozek2k', 'tK2`W&Q\7<G', 'Korella', 'Brozek', 'kbrozek2k@fotki.com', '+1 (830) 920-4018', 29722722, 14);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('fjanosevic2l', 'aU3.?&a1JG', 'Florencia', 'Janosevic', 'fjanosevic2l@uiuc.edu', '+48 (465) 875-2660', 48327823, 45);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hscotland2m', 'cV4%SU}OfA''pB*Az', 'Harriott', 'Scotland', 'hscotland2m@jalbum.net', '+62 (426) 298-5612', 34976916, 26);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('abrame2n', 'eK8|Zb{G', 'Ashil', 'Brame', 'abrame2n@hexun.com', '+62 (666) 496-6441', 42406465, 84);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('droydon2o', 'fJ3}fG#&N2q', 'Dorothy', 'Roydon', 'droydon2o@sohu.com', '+95 (784) 333-3565', 50586028, 74);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('vfoxley2p', 'qO1%NADHxDB', 'Vasilis', 'Foxley', 'vfoxley2p@youtube.com', '+380 (334) 894-0751', 41213429, 100);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mlivesay2q', 'cX8"_AZd@i?dA', 'Monah', 'Livesay', 'mlivesay2q@uiuc.edu', '+62 (435) 358-8130', 60085515, 81);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('astendall2r', 'aH2_D{F,zRg&%U', 'Atalanta', 'Stendall', 'astendall2r@nsw.gov.au', '+7 (669) 538-0173', 59637268, 23);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mszwandt2s', 'vK6_z,<d|', 'Moira', 'Szwandt', 'mszwandt2s@walmart.com', '+353 (295) 984-7768', 18014583, 36);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ljell2t', 'hJ5{&qlW)Xk$', 'Lionello', 'Jell', 'ljell2t@etsy.com', '+504 (548) 665-0120', 37622839, 81);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lmacascaidh2u', 'zR2\G~K{LXt', 'Lenora', 'MacAscaidh', 'lmacascaidh2u@soundcloud.com', '+62 (769) 328-2342', 21843177, 41);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('sbresland2v', 'lH4&%r`pzp\>Tq', 'Scottie', 'Bresland', 'sbresland2v@infoseek.co.jp', '+7 (241) 732-0077', 20739788, 64);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('eclinton2w', 'qY8?`b>}&}S/We', 'Elane', 'Clinton', 'eclinton2w@goo.gl', '+420 (689) 914-9355', 36429331, 65);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('obimson2x', 'aU8.#vs!S', 'Odetta', 'Bimson', 'obimson2x@t-online.de', '+92 (344) 223-2040', 35185548, 99);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('dbrampton2y', 'iT5(tkwH', 'Dorolisa', 'Brampton', 'dbrampton2y@people.com.cn', '+385 (315) 133-7527', 22223300, 57);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hquin2z', 'wL8+YHen36/T|%0"', 'Henryetta', 'Quin', 'hquin2z@unblog.fr', '+382 (204) 402-7795', 53305244, 17);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ceves30', 'uK2''l/r3I', 'Corine', 'Eves', 'ceves30@seattletimes.com', '+1 (915) 959-4067', 35444757, 92);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('nmuffett32', 'nJ1@LR!Z`<,', 'Nikita', 'Muffett', 'nmuffett32@meetup.com', '+1 (205) 612-7631', 46518828, 86);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lgiottoi33', 'wW4=v)7LER>F6t', 'Lucienne', 'Giottoi', 'lgiottoi33@tumblr.com', '+505 (118) 761-2324', 16332850, 7);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ltroake35', 'aH4)F+CGvZfgi@', 'Lauryn', 'Troake', 'ltroake35@dot.gov', '+86 (407) 949-3061', 54717885, 13);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('gcawston36', 'rZ9>BA5O`''~cW@<', 'Gilli', 'Cawston', 'gcawston36@state.tx.us', '+229 (473) 519-5842', 39324488, 26);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bborkett37', 'zQ2$iJo}', 'Blanch', 'Borkett', 'bborkett37@gizmodo.com', '+48 (817) 709-9319', 59079766, 27);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mcrowther38', 'iJ1&~pA9EvH', 'Miguelita', 'Crowther', 'mcrowther38@mysql.com', '+86 (809) 546-1175', 25093742, 100);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hsterland39', 'qX4#f"30NKT', 'Hewet', 'Sterland', 'hsterland39@dailymotion.com', '+62 (622) 825-3359', 47199707, 86);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('nomoylane3a', 'gE6/MVB%Yfx9', 'Nana', 'O''Moylane', 'nomoylane3a@nifty.com', '+48 (209) 270-2358', 53765440, 36);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mgarrow3b', 'kM0(>P3P$', 'Marchelle', 'Garrow', 'mgarrow3b@uiuc.edu', '+49 (777) 979-6142', 29173733, 64);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ademoreno3c', 'zJ4*Y?DB"<fByUv', 'Alex', 'De Moreno', 'ademoreno3c@themeforest.net', '+380 (939) 715-7353', 33658979, 29);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mloveland3d', 'aS4>xYD#', 'Merrili', 'Loveland', 'mloveland3d@pbs.org', '+62 (199) 964-8475', 23973463, 46);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rhawkett3e', 'sN1*U@r{Q{}GAdH8', 'Regan', 'Hawkett', 'rhawkett3e@unesco.org', '+420 (189) 239-6157', 53964936, 78);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cmerigot3f', 'mQ2&k44rGIl1Z', 'Chaddy', 'Merigot', 'cmerigot3f@indiatimes.com', '+86 (996) 490-4075', 42609479, 1);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('fbrymham3g', 'iZ3,a)Z}a7!R''Y', 'Fredelia', 'Brymham', 'fbrymham3g@ocn.ne.jp', '+593 (634) 501-9792', 51608177, 100);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ecerman3h', 'xW8<rpIc', 'Edeline', 'Cerman', 'ecerman3h@mit.edu', '+46 (249) 322-6992', 17573742, 45);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('gwatford3i', 'fO4"!vre!z("cL', 'Gaby', 'Watford', 'gwatford3i@oakley.com', '+62 (305) 503-7355', 40353527, 94);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('azmitruk3j', 'eC6&(o#Bf7BO', 'Alaster', 'Zmitruk', 'azmitruk3j@example.com', '+46 (742) 384-2592', 28607437, 34);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('fcalles3k', 'jP3!O,%,xtXB#}@', 'Felizio', 'Calles', 'fcalles3k@merriam-webster.com', '+86 (256) 280-5375', 45652328, 50);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('tswires3l', 'hK1$Ne*cp2gH/', 'Trina', 'Swires', 'tswires3l@msu.edu', '+373 (618) 327-4865', 13367357, 56);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('adoubrava3m', 'qV6)BXx_s%XC>1', 'Almire', 'Doubrava', 'adoubrava3m@eventbrite.com', '+46 (540) 722-3564', 61570834, 41);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('newers3n', 'jJ3=jWh<>A', 'Nita', 'Ewers', 'newers3n@chron.com', '+55 (462) 119-7694', 40766103, 67);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('dbartol3o', 'dW0_Kx?wr2PI"a~G', 'Dierdre', 'Bartol', 'dbartol3o@goodreads.com', '+94 (330) 709-7219', 26261148, 19);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bstannion3p', 'fI7},qpGr', 'Blake', 'Stannion', 'bstannion3p@ebay.co.uk', '+39 (149) 175-8410', 33448988, 58);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('stibb3q', 'eT8)V3#(JL', 'Sue', 'Tibb', 'stibb3q@hexun.com', '+63 (684) 289-6239', 43182154, 42);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hhurtado3r', 'cK8_3={))xR', 'Hazel', 'Hurtado', 'hhurtado3r@dedecms.com', '+86 (220) 644-4179', 50986137, 87);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ahouliston3s', 'wX8|Cas4?w"', 'Ardenia', 'Houliston', 'ahouliston3s@issuu.com', '+7 (883) 682-5734', 45867028, 27);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('tbone3t', 'bP7)QCBKn0_', 'Tove', 'Bone', 'tbone3t@sfgate.com', '+7 (620) 105-6877', 20553034, 22);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mpentony3u', 'rQ6@s@!$', 'Mohandis', 'Pentony', 'mpentony3u@trellian.com', '+86 (764) 277-4166', 24999401, 13);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cricci3v', 'cO0+1N@O', 'Constancy', 'Ricci', 'cricci3v@purevolume.com', '+46 (818) 726-4661', 13281591, 23);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kblount3w', 'zR4+x3>G_h/tSm0', 'Karl', 'Blount', 'kblount3w@noaa.gov', '+1 (541) 488-6903', 37524923, 44);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('jpannett3x', 'nZ2*k,BH%f?<', 'Jedidiah', 'Pannett', 'jpannett3x@wired.com', '+51 (279) 964-7918', 59619251, 22);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('afolger3y', 'dK3$RFSw', 'Ashlie', 'Folger', 'afolger3y@cbc.ca', '+685 (648) 200-3597', 59609310, 21);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kgellan3z', 'aL1(cO>c1&(&', 'Kristan', 'Gellan', 'kgellan3z@artisteer.com', '+7 (147) 404-8885', 40265403, 20);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('corridge40', 'gF2''x72G5xp@d*n', 'Christopher', 'Orridge', 'corridge40@tmall.com', '+86 (597) 345-3578', 54782849, 13);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ebockin41', 'bT5)JAFr', 'Eustacia', 'Bockin', 'ebockin41@thetimes.co.uk', '+33 (992) 578-6266', 19274485, 17);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('sodde42', 'xY6/N98|', 'Susanna', 'Odde', 'sodde42@furl.net', '+212 (432) 551-4476', 51205720, 11);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('stourner43', 'nA6`HS8lK~Q.qyd', 'Scarlet', 'Tourner', 'stourner43@woothemes.com', '+55 (849) 800-7645', 37154179, 1);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('amclucas44', 'pZ8{Zc}wP`', 'Artemus', 'McLucas', 'amclucas44@cpanel.net', '+7 (575) 805-9532', 60252947, 32);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ldundridge45', 'aV3=9!kC', 'Leslie', 'Dundridge', 'ldundridge45@wikispaces.com', '+81 (302) 910-4108', 22317730, 93);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bfavelle46', 'wS3#vQP''G_7jXbI', 'Bibi', 'Favelle', 'bfavelle46@miibeian.gov.cn', '+54 (838) 918-6277', 58168997, 19);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rdupre48', 'gM6(Zl\0a(VA)', 'Reggie', 'Du Pre', 'rdupre48@printfriendly.com', '+86 (533) 441-9891', 34102662, 27);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mrimer49', 'rH6~>''z6M', 'Myrah', 'Rimer', 'mrimer49@smh.com.au', '+86 (759) 843-8790', 39862248, 46);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lkeggin4a', 'vV9}}lXsQtMA+m*_', 'Lonnie', 'Keggin', 'lkeggin4a@imdb.com', '+86 (728) 682-4984', 59684315, 96);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('sable4b', 'fJ9{`npE', 'Shelley', 'Able', 'sable4b@dion.ne.jp', '+351 (214) 590-5439', 54849233, 23);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rcecchi4c', 'gZ9?xm,xGFqKq7ge', 'Romola', 'Cecchi', 'rcecchi4c@fotki.com', '+63 (223) 641-5123', 50388051, 99);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('mslad4d', 'yH0&=TgA*', 'Milton', 'Slad', 'mslad4d@tripod.com', '+54 (145) 617-7742', 56241119, 57);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('stolcher4e', 'mP2!9`+F"', 'Staffard', 'Tolcher', 'stolcher4e@whitehouse.gov', '+994 (649) 652-2713', 27425085, 7);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('vsedgwick4f', 'iX6.Lk>XKL''6)D1', 'Vlad', 'Sedgwick', 'vsedgwick4f@cbslocal.com', '+86 (932) 330-8180', 14544013, 21);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kloan4g', 'bY5&w0i{', 'Kandy', 'Loan', 'kloan4g@google.com', '+62 (250) 841-3652', 55244298, 86);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('tlongfut4h', 'jZ9?}fC?EC3k''W_E', 'Trescha', 'Longfut', 'tlongfut4h@ox.ac.uk', '+237 (425) 461-3079', 17311256, 54);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cshelvey4i', 'gU5}"GnL@|U', 'Carl', 'Shelvey', 'cshelvey4i@goodreads.com', '+86 (350) 525-2576', 20821618, 11);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('jgillan4j', 'lS3~c=5i}+|VZ', 'Jade', 'Gillan', 'jgillan4j@networksolutions.com', '+45 (889) 689-8293', 35284233, 22);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bkubes4k', 'sW8_y+SpN\DD"s`', 'Bartholomew', 'Kubes', 'bkubes4k@samsung.com', '+63 (826) 782-2206', 41759650, 62);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('dpellingar4l', 'jP1=WgH\C', 'Dante', 'Pellingar', 'dpellingar4l@slate.com', '+242 (825) 760-7706', 59381751, 96);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('wgrooby4m', 'qC9_f31v<NhV', 'Willdon', 'Grooby', 'wgrooby4m@blogspot.com', '+234 (686) 809-4228', 41815376, 75);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('etrevers4n', 'pN3,(%(&s#r*p', 'Edlin', 'Trevers', 'etrevers4n@acquirethisname.com', '+57 (133) 585-0317', 41405594, 75);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('dyong4o', 'qP1(iz~Z', 'Drusy', 'Yong', 'dyong4o@loc.gov', '+60 (146) 251-9359', 13592627, 91);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kherries4p', 'fN3!{Y3JV,V04', 'Kellsie', 'Herries', 'kherries4p@oracle.com', '+63 (719) 201-1416', 27397220, 13);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lmurricanes4q', 'eA4}iG8e_,2@', 'Leila', 'Murricanes', 'lmurricanes4q@lulu.com', '+7 (783) 184-5310', 34134373, 93);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('sballingal4r', 'kA4?4?yOeIG', 'Sharon', 'Ballingal', 'sballingal4r@sakura.ne.jp', '+86 (421) 945-2904', 19385790, 21);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('scoggin4s', 'oA1{u@loi!Z7)', 'Shannen', 'Coggin', 'scoggin4s@freewebs.com', '+63 (420) 901-7187', 20078271, 73);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('abentham4t', 'gV2&9b(o', 'Abie', 'Bentham', 'abentham4t@google.ru', '+62 (916) 916-8134', 28579592, 15);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bcartan4u', 'nA4.=)bi!', 'Bern', 'Cartan', 'bcartan4u@jimdo.com', '+62 (146) 844-7461', 36070135, 80);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rriseley4v', 'dP0}.Ug`5', 'Robinia', 'Riseley', 'rriseley4v@g.co', '+351 (145) 930-1716', 37729787, 22);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('kbardell4w', 'cK5|a*G\wLL', 'Kingston', 'Bardell', 'kbardell4w@usgs.gov', '+358 (390) 855-9859', 19885402, 88);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ggarey4x', 'vR9~dit+_/gdp', 'Gus', 'Garey', 'ggarey4x@statcounter.com', '+48 (938) 647-7131', 46088299, 1);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lsilley4y', 'cD0.&AL*,I_jqI1', 'Leesa', 'Silley', 'lsilley4y@unc.edu', '+7 (419) 520-3100', 36529045, 66);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lfurlow4z', 'hP9`&$GvQs', 'Leese', 'Furlow', 'lfurlow4z@si.edu', '+54 (941) 701-3368', 53262530, 73);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('dbotly50', 'xR6"BTs2!jfz,xT', 'Donalt', 'Botly', 'dbotly50@guardian.co.uk', '+351 (728) 336-6726', 45411875, 91);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ttreacher51', 'lO2>vS2QaVx?Ab', 'Terrye', 'Treacher', 'ttreacher51@admin.ch', '+46 (281) 211-3453', 16066635, 85);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('nbaldetti52', 'hK9)|~W&0TKt01', 'Nikita', 'Baldetti', 'nbaldetti52@un.org', '+86 (780) 368-9931', 17942068, 87);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('hchmiel53', 'lG8=d})2MC', 'Hewet', 'Chmiel', 'hchmiel53@reuters.com', '+82 (428) 945-0820', 44352957, 98);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ndevenny54', 'qD8$fo.pXu&H', 'Nelia', 'Devenny', 'ndevenny54@unc.edu', '+86 (591) 764-6395', 54334063, 71);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('lhatcliffe55', 'rQ8$lx&U', 'Lazarus', 'Hatcliffe', 'lhatcliffe55@cdbaby.com', '+33 (218) 615-0245', 58817001, 54);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('bphilipsson56', 'pY7~!t''4c&gBzl#K', 'Britt', 'Philipsson', 'bphilipsson56@goo.gl', '+970 (311) 674-1924', 54448896, 25);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('sbatty57', 'yN9.kTA6E\y7q}z', 'Sherwood', 'Batty', 'sbatty57@irs.gov', '+46 (437) 889-0522', 47416099, 1);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('ptolerton58', 'fY9>|Pv6', 'Philbert', 'Tolerton', 'ptolerton58@yellowbook.com', '+81 (890) 567-5529', 44625034, 50);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('erisebrow59', 'lV8*4Nk%VEs)7T', 'Emelda', 'Risebrow', 'erisebrow59@timesonline.co.uk', '+351 (572) 697-3069', 25833286, 7);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rseniour5a', 'wB4`~g<)@Bv?VVS', 'Ray', 'Seniour', 'rseniour5a@discuz.net', '+62 (674) 797-8345', 19954517, 36);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('smcgarel5b', 'sZ1,c\Kzu', 'Samara', 'McGarel', 'smcgarel5b@moonfruit.com', '+86 (946) 825-8299', 56236589, 33);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cegginson5c', 'bQ3#U451a6keth', 'Catharine', 'Egginson', 'cegginson5c@earthlink.net', '+505 (951) 478-4695', 50323809, 78);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('sisac5d', 'gL3{+k''kB14`*Cb', 'Schuyler', 'Isac', 'sisac5d@dailymotion.com', '+55 (207) 363-9940', 34030297, 23);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('vfrancillo5e', 'kL9,?''?\+5*P%9', 'Vanni', 'Francillo', 'vfrancillo5e@epa.gov', '+86 (993) 313-9315', 61635514, 78);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('rlapthorn5f', 'wB1@P+VG''Ep<=J/', 'Rikki', 'Lapthorn', 'rlapthorn5f@homestead.com', '+505 (585) 500-6790', 21789863, 11);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('raphale5g', 'uA4+T=,x9*V', 'Royce', 'Aphale', 'raphale5g@phpbb.com', '+31 (403) 130-9832', 57598812, 32);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('asaveall5h', 'yS5)2v7p8W9CPOR)', 'Arvie', 'Saveall', 'asaveall5h@google.co.uk', '+7 (805) 753-9763', 60473398, 94);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('cingold5i', 'hJ1<tp/N4LciHcD', 'Constantin', 'Ingold', 'cingold5i@howstuffworks.com', '+62 (572) 647-7814', 17704065, 40);
insert into usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) values ('shendrichs5j', 'aG6++0rIPy_', 'Shanon', 'Hendrichs', 'shendrichs5j@vimeo.com', '+7 (998) 943-2580', 33778136, 67);


ALTER TABLE flighthandler.usuario ADD CONSTRAINT FK_USER_COUNTRY FOREIGN KEY FK_USER_COUNTRY (countryId)
REFERENCES flighthandler.country (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE flighthandler.continent ADD CONSTRAINT FK_LNG_ID FOREIGN KEY FK_LNG_ID (languajeId)
REFERENCES flighthandler.languaje (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE flighthandler.country ADD CONSTRAINT FK_LNG_ID_COUNT FOREIGN KEY FK_LNG_ID_COUNT (languajeId)
REFERENCES flighthandler.languaje (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE flighthandler.country ADD CONSTRAINT FK_CONT_ID_COUNT FOREIGN KEY FK_LNG_CONT_COUNT (continentId)
REFERENCES flighthandler.continent (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
