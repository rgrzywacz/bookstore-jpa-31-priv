SET SQL_SAFE_UPDATES = 0;


delete from authors_books;
delete from authors;
delete from order_details;
delete from orders;
delete from payment_types;
delete from customers;
delete from copies;
delete from formats;
delete from books;
delete from categories;
delete from publishers;
delete from addresses;
delete from payment_types;

ALTER TABLE addresses AUTO_INCREMENT=1;
ALTER TABLE categories AUTO_INCREMENT=1;
ALTER TABLE payment_types AUTO_INCREMENT=1;
ALTER TABLE publishers AUTO_INCREMENT=1;
ALTER TABLE authors_books AUTO_INCREMENT=1;
ALTER TABLE authors AUTO_INCREMENT=1;
ALTER TABLE order_details AUTO_INCREMENT=1;
ALTER TABLE orders AUTO_INCREMENT=1;
ALTER TABLE payment_types AUTO_INCREMENT=1;
ALTER TABLE customers AUTO_INCREMENT=1;
ALTER TABLE copies AUTO_INCREMENT=1;
ALTER TABLE books AUTO_INCREMENT=1;
ALTER TABLE formats AUTO_INCREMENT=1;

insert into categories(name, code) values ("Kryminał","CRIME");
insert into categories(name, code) values ("Powieść fantasy","FANTASY");
insert into categories(name, code) values ("Thriller","THRILLER");
insert into categories(name, code) values ("Biografia","BIOGRAPHY");
insert into categories(name, code) values ("Poradnik","GUIDE");
insert into categories(name, code) values ("Historia","HISTORY");

insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '90-104','Pomorska','13A','11');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Piękna','13A','11');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Piękna','12','10');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Piękna','11','7');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Łódź', '93-192','Piękna','10');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','110C','11');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','110B','14');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','110D','123');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','110D','123');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','97','12');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','12','13');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','192','138');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','2','2C');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-192','Obywatelska','3','5D');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-193','Milionowa','8','15');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-194','Łęczycka','5','123');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-194','Łęczycka','18','7');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Łódź', '93-194','Łęczycka','11');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-253','Przybyszewskiego','110','2C');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-253','Przybyszewskiego','110','80');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Łódź', '93-253','Długa','8','76');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Łódź', '93-253','Długa','96');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Braterska','10','10');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Braterska','10','18');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Braterska','10','33');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Braterska','12B','2');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Braterska','14','20');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Piękna','5','1');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Piękna','20','13');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Rejtana','5','2');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Rejtana','12','3');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Łódź','94-104','Rejtana','12B','8');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Zgierz','95-100','Żytnia','5','8');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Zgierz','95-100','Żytnia','5','9');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Zgierz','95-100','Żytnia','20','18');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Zgierz','95-100','Zachodnia','13','3');

INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Bełchatów','97-400','Wojska Polskiego','1','8');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Bełchatów','97-400','Wojska Polskiego','2','9');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Bełchatów','97-400','Wojska Polskiego','3','18');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Bełchatów','97-400','Wojska Polskiego','4','3');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Bełchatów','97-400','Wojska Polskiego','5','8');

insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','12');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','13');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','187');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','72');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','10');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','101');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','123');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','142');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','34');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-001','Solna','23');
insert into addresses (country, city, zip_code, street, street_no, home_no) values ('Polska','Warszawa', '00-001','Solna','154','1C');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-024','Konstantynowska','12');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-024','Konstantynowska','13');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-024','Konstantynowska','14');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-024','Konstantynowska','15');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-024','Konstantynowska','16');
insert into addresses (country,city,zip_code,street,street_no,home_no) values ('Polska','Warszawa','02-495','Regulska','10','1');
insert into addresses (country,city,zip_code,street,street_no,home_no) values ('Polska','Warszawa','02-495','Regulska','20','10');
insert into addresses (country,city,zip_code,street,street_no,home_no) values ('Polska','Warszawa','02-495','Regulska','25B','12');
insert into addresses (country,city,zip_code,street,street_no,home_no) values ('Polska','Warszawa','02-495','Regulska','30','3');
insert into addresses (country,city,zip_code,street,street_no,home_no) values ('Polska','Warszawa','02-495','Regulska','33','4');
insert into addresses (country, city, zip_code, street, street_no,home_no) values ('Polska','Warszawa', '00-024','Konstantynowska','123','1');
insert into addresses (country, city, zip_code, street, street_no,home_no) values ('Polska','Warszawa', '00-024','Konstantynowska','32','2');
insert into addresses (country, city, zip_code, street, street_no,home_no) values ('Polska','Warszawa', '00-024','Konstantynowska','3','1');
insert into addresses (country, city, zip_code, street, street_no,home_no) values ('Polska','Warszawa', '00-056','Mleczna','45','23');
insert into addresses (country, city, zip_code, street, street_no,home_no) values ('Polska','Warszawa', '00-012','Włska','44','33');
insert into addresses (country, city, zip_code, street, street_no,home_no) values ('Polska','Warszawa', '00-012','Włska','40','33A');
insert into addresses (country, city, zip_code, street, street_no) values ('Polska','Warszawa', '00-012','Włska','10');

INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Aleksandrów Łódzki','95-070','Pabianicka','1','');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska', 'Aleksandrów Łódzki','95-070','Pabianicka','15','8');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Aleksandrów Łódzki','95-070','Pabianicka','15','9');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Aleksandrów Łódzki','95-070','Pabianicka','18','18');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Aleksandrów Łódzki','95-070','Pabianicka','133','3');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Aleksandrów Łódzki','95-070','Pabianicka','133B','8');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Aleksandrów Łódzki','95-070','Pabianicka','23','4');

INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Wyzwolenia','1','8');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Wyzwolenia','20','9');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Wyzwolenia','21A','3');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Wyzwolenia','21B','4');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Wyzwolenia','21C','7');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Mikołaja Reja','2','2');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Mikołaja Reja','2','3');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Mikołaja Reja','110','16');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Mikołaja Reja','110','18');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Polska','Lublin','20-368','Mikołaja Reja','120','20');

INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Nad Nuslemi','110','18F');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Nad Nuslemi','85','85');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Nad Nuslemi','41','2A');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Nad Nuslemi','62','2G');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Nad Nuslemi','65','12');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Nad Nuslemi','65','113');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Nad Nuslemi','65','112');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Nad Nuslemi','96','111');
INSERT addresses (country, city,zip_code,street,street_no) values ('Czechy','Praga','140-00','Nad Nuslemi','65');

INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','96','111');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','123','111');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','32','23');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','23','41');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','23','151');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','23','11');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','43','11');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','53','121');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','53','131');
INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','140-00','Svatoslavova','456','11A');
INSERT addresses (country, city,zip_code,street,street_no) values ('Czechy','Praga','140-00','Svatoslavova','123');
INSERT addresses (country, city,zip_code,street,street_no) values ('Czechy','Praga','140-00','Svatoslavova','34');
INSERT addresses (country, city,zip_code,street,street_no) values ('Czechy','Praga','140-00','Svatoslavova','95');
INSERT addresses (country, city,zip_code,street,street_no) values ('Czechy','Praga','140-00','Svatoslavova','96');
INSERT addresses (country, city,zip_code,street,street_no) values ('Czechy','Praga','140-00','Svatoslavova','97');
INSERT addresses (country, city,zip_code,street,street_no) values ('Czechy','Praga','140-00','Svatoslavova','98');
INSERT addresses (country, city,zip_code,street,street_no) values ('Czechy','Praga','140-00','Svatoslavova','98A');


INSERT addresses (country, city,zip_code,street,street_no,home_no) values ('Czechy','Praga','20-368','Mikołaja Reja','120','20');

select count(*) from addresses;
-- authors
-- horror i kryminał
insert into authors (first_name, last_name,description, date_of_birth) values ('Stephen','King','Amerykański pisarz specjalizujący się w literaturze grozy. ','1947-09-21');
-- sciensce fiction
insert into authors (first_name, last_name, date_of_birth, sex) values ('Pierce','Brown','1988-01-28', 'M');
insert into authors (first_name, last_name, date_of_birth, sex) values ('Ernest','Cline','1972-03-29','M');
-- fantasy
insert into authors (first_name, last_name, date_of_birth) values ('Andrzej','Sapkowski','1948-06-21');
insert into authors (first_name, last_name, date_of_birth) values ('Cecilia','Randal',null);
insert into authors (first_name, last_name, date_of_birth) values ('Douglas','Hulick',null);
-- thriller
insert into authors (first_name, last_name, date_of_birth) values ('Beata','Nowosielska',null);
insert into authors (first_name, last_name, date_of_birth) values ('Loisc','Duncan','1934-04-28');
insert into authors (first_name, last_name, date_of_birth) values ('Jana','Wagner','1973-10-08');

insert into authors (first_name,last_name,date_of_birth,sex) values ('Andy','Weir','1972-06-12','M');

-- kryminał
insert into authors (first_name, last_name, date_of_birth, sex) values ('Agatha','Christie','1890-09-15','F');
insert into authors (first_name, last_name, date_of_birth) values ('Robert','Galbrith','1965-07-31');

insert into authors (first_name,last_name,date_of_birth,sex) values ('Camilla','Lackberg','1974-10-12','F');
insert into authors (first_name,last_name,date_of_birth,sex) values ('Harlan','Coben','1964-03-11','M');
insert into authors (first_name,last_name,date_of_birth,sex) values ('Dmitry','Glukhovsky','1979-07-12','M');
insert into authors (first_name,last_name,date_of_birth,sex) values ('Graham','Masterton','1946-01-16','M');



-- publishers
insert into publishers (name, email, address_id, dialing_code, phone_number) values('Wydawnictwo Lublin','wydlub@lub.pl',(select id from addresses where city='Lublin' and street='Wyzwolenia' and street_no='1' and home_no='8'),'48','466789123');
insert into publishers (name, email, address_id, dialing_code, phone_number) values('Wydawnictwo Warszawa I','wydwaw1@gmail.com',(select id from addresses where city='Warszawa' and street='Regulska' and street_no='10' and home_no='1'),'48','147852236');
insert into publishers (name, email, address_id, dialing_code, phone_number) values('Wydawnictwo Warszawa II','wydwaw2@gmail.com',(select id from addresses where city='Warszawa' and street='Regulska' and street_no='20' and home_no='10'),'48','22555687');
insert into publishers (name, email, address_id, dialing_code, phone_number) values('Wydawnictwo Łódź','lodzwyd@gmail.com',(select id from addresses where city='Łódź' and street='Braterska' and street_no='10' and home_no='10'),'48','336589412');
insert into publishers (name, email, address_id, dialing_code, phone_number) values('Wydawnictwo Zgierz','zgierskiewyd@gmail.com',(select id from addresses where city='Zgierz' and street='Żytnia' and street_no='5' and home_no='8'),'48','55748965');
insert into publishers (name, email, address_id, dialing_code, phone_number) values('Wydawnictwo Bełchatów','btw@gmail.com',(select id from addresses where city='Bełchatów' and street='Wojska Polskiego' and street_no='1' and home_no='8'),'48','235254854');
insert into publishers (name, email, address_id, dialing_code, phone_number) values('Wydawnictwo Aleksandrów Łódzki','alex@gmail.com',(select id from addresses where city='Aleksandrów Łódzki' and street='Pabianicka' and street_no='15' and home_no='8'),'48','256698854');
insert into publishers (name, email, address_id, dialing_code, phone_number) values('Wydawnictwo Nova Chech','novachech@gmail.com',(select id from addresses where city='Praga' and street='Svatoslavova' and street_no='456' and home_no='11A'),'420','256698854');

-- select * from books;

-- select * from  publishers;

-- Camilla Läckberg
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Kaznodzieja',440,8788375545067,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Kamieniarz',536,9788375545074,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Niemiecki bękart',556,9788375545098,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Ofiara losu',448,9788375545081,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Fabrykantka aniołków',496,9788375545082,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Latarnik',496,9788375546514,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Syrenka',488,1978837554510,4,1);
-- Harlan Coben
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Nie mów nikomu',384,9788381251372,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('W głębi lasu',430,9788381251549,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Bez pożegnania',420,9788381251471,4,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Bez śladu',384,9788381251457,4,1);

-- Stephen King
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Cmętarz zwieżąt', 424,9788376481241,1,5);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Carrie', 216,9788380973114,1,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Miasteczko Salem', 311,5823459248522,1,7);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('To', 1104,9788365781628,1,2);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Ręka mistrza', 640,9788376480459,1,6);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Cztery pory roku', 512,9788379855612,1,3);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Sklepik z marzeniami', 672,9788378858065,1,5);

-- Graham Masterton
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Wyklęty', 399,9788378186359,1,4);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Kostnica', 196,9788378184508,1,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Dom kości', 288,9788376741246,1,6);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Zemsta Manitou', 304,9788381250504,1,5);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Drapieżcy', 400,9788376595917,1,3);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Dziecko ciemności', 400,9788376742755,1,3);

-- Andrzej Sapkowski
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Ostatnie życzenie', 332,9788375780635,2,3);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Ostatnie Życzenie. Miecz Przeznaczenia', 630,8370540376,2,4);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Krew elfów', 340,9788375780659,2,5);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Czas pogardy', 368,9788375780666,2,6);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Chrzest ognia', 382,9788375780673,2,7);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Wieża Jaskółki', 488,9788375780680,2,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Pani Jeziora', 596,9788375780697,2,3);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Sezon burz', 404,9788375780698,2,2);



-- Dmitry Glukhovsky
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Metro 2033',241,9788366071308,3,2);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Metro 2034',261,9788366071315,3,2);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Metro 2035',291,9788366071316,3,2);
-- Andy Weir
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Artemis',416,9788328707283,3,1);
insert into books (title,pages_number,isbn,category_id,publisher_id) values ('Marsjanin',384,9788328705326,3,1);
select * from authors;


-- Camilla Läckberg
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Camilla'), (select id from books where title ='Kaznodzieja'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Camilla'), (select id from books where title ='Kamieniarz'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Camilla'), (select id from books where title ='Niemiecki bękart'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Camilla'), (select id from books where title ='Ofiara losu'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Camilla'), (select id from books where title ='Fabrykantka aniołków'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Camilla'), (select id from books where title ='Latarnik'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Camilla'), (select id from books where title ='Syrenka'));
-- Harlan Coben
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Harlan'), (select id from books where title ='Nie mów nikomu'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Harlan'), (select id from books where title ='W głębi lasu'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Harlan'), (select id from books where title ='Bez pożegnania'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Harlan'), (select id from books where title ='Bez śladu'));
-- Dmitry Glukhovsky
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Dmitry'), (select id from books where title ='Metro 2033'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Dmitry'), (select id from books where title ='Metro 2034'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Dmitry'), (select id from books where title ='Metro 2035'));
-- Andy Weir
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andy'), (select id from books where title ='Artemis'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andy'), (select id from books where title ='Marsjanin'));
-- Stephen King
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Stephen'), (select id from books where title ='Cmętarz zwieżąt'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Stephen'), (select id from books where title ='Carrie'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Stephen'), (select id from books where title ='Miasteczko Salem'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Stephen'), (select id from books where title ='To'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Stephen'), (select id from books where title ='Ręka mistrza'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Stephen'), (select id from books where title ='Cztery pory roku'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Stephen'), (select id from books where title ='Sklepik z marzeniami'));
-- Graham Masterton
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Graham'), (select id from books where title ='Wyklęty'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Graham'), (select id from books where title ='Kostnica'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Graham'), (select id from books where title ='Dom kości'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Graham'), (select id from books where title ='Zemsta Manitou'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Graham'), (select id from books where title ='Drapieżcy'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Graham'), (select id from books where title ='Dziecko ciemności'));
-- Andrzej Sapkowski
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andrzej'), (select id from books where title ='Ostatnie życzenie'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andrzej'), (select id from books where title ='Ostatnie Życzenie. Miecz Przeznaczenia'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andrzej'), (select id from books where title ='Krew elfów'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andrzej'), (select id from books where title ='Czas pogardy'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andrzej'), (select id from books where title ='Chrzest ognia'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andrzej'), (select id from books where title ='Wieża Jaskółki'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andrzej'), (select id from books where title ='Pani Jeziora'));
insert into authors_books (author_id,book_id) values ((select id from authors where first_name ='Andrzej'), (select id from books where title ='Sezon burz'));


insert into formats(name, code) values ('Format papierowy','PAPER');
insert into formats(name, code) values ('Format EPUB','EPUB');
insert into formats(name, code) values ('Format MOBI','MOBI');
insert into formats(name, code) values ('Format PDF','PDF');


insert into copies(book_id,format_id,cost) values (1,1,35.90);
insert into copies(book_id,format_id,cost) values (1,1,35.90);
insert into copies(book_id,format_id,cost) values (1,1,35.90);

insert into copies(book_id,format_id,cost) values (1,2,24.90);
insert into copies(book_id,format_id,cost) values (1,2,24.90);
insert into copies(book_id,format_id,cost) values (1,2,24.90);

insert into copies(book_id,format_id,cost) values (1,3,24.90);
insert into copies(book_id,format_id,cost) values (1,3,24.90);
insert into copies(book_id,format_id,cost) values (1,3,24.90);

insert into copies(book_id,format_id,cost) values (1,4,24.90);
insert into copies(book_id,format_id,cost) values (1,4,24.90);
insert into copies(book_id,format_id,cost) values (1,4,24.90);


insert into copies(book_id,format_id,cost) values (2,1,35.90);
insert into copies(book_id,format_id,cost) values (2,1,35.90);
insert into copies(book_id,format_id,cost) values (2,1,35.90);

insert into copies(book_id,format_id,cost) values (2,2,24.90);
insert into copies(book_id,format_id,cost) values (2,2,24.90);
insert into copies(book_id,format_id,cost) values (2,2,24.90);

insert into copies(book_id,format_id,cost) values (2,3,24.90);
insert into copies(book_id,format_id,cost) values (2,3,24.90);
insert into copies(book_id,format_id,cost) values (2,3,24.90);

insert into copies(book_id,format_id,cost) values (2,4,24.90);
insert into copies(book_id,format_id,cost) values (2,4,24.90);
insert into copies(book_id,format_id,cost) values (2,4,24.90);


insert into copies(book_id,format_id,cost) values (3,1,35.90);
insert into copies(book_id,format_id,cost) values (3,1,35.90);
insert into copies(book_id,format_id,cost) values (3,1,35.90);

insert into copies(book_id,format_id,cost) values (3,2,24.90);
insert into copies(book_id,format_id,cost) values (3,2,24.90);
insert into copies(book_id,format_id,cost) values (3,2,24.90);

insert into copies(book_id,format_id,cost) values (3,3,24.90);
insert into copies(book_id,format_id,cost) values (3,3,24.90);
insert into copies(book_id,format_id,cost) values (3,3,24.90);

insert into copies(book_id,format_id,cost) values (3,4,24.90);
insert into copies(book_id,format_id,cost) values (3,4,24.90);
insert into copies(book_id,format_id,cost) values (3,4,24.90);


insert into copies(book_id,format_id,cost) values (4,1,37.90);
insert into copies(book_id,format_id,cost) values (4,1,37.90);
insert into copies(book_id,format_id,cost) values (4,1,37.90);

insert into copies(book_id,format_id,cost) values (4,2,23.90);
insert into copies(book_id,format_id,cost) values (4,2,23.90);
insert into copies(book_id,format_id,cost) values (4,2,23.90);

insert into copies(book_id,format_id,cost) values (4,3,23.90);
insert into copies(book_id,format_id,cost) values (4,3,23.90);
insert into copies(book_id,format_id,cost) values (4,3,23.90);

insert into copies(book_id,format_id,cost) values (4,4,23.90);
insert into copies(book_id,format_id,cost) values (4,4,23.90);
insert into copies(book_id,format_id,cost) values (4,4,23.90);


insert into copies(book_id,format_id,cost) values (5,1,39.90);
insert into copies(book_id,format_id,cost) values (5,1,39.90);
insert into copies(book_id,format_id,cost) values (5,1,39.90);

insert into copies(book_id,format_id,cost) values (5,2,34.90);
insert into copies(book_id,format_id,cost) values (5,2,34.90);
insert into copies(book_id,format_id,cost) values (5,2,34.90);

insert into copies(book_id,format_id,cost) values (5,3,34.90);
insert into copies(book_id,format_id,cost) values (5,3,34.90);
insert into copies(book_id,format_id,cost) values (5,3,34.90);

insert into copies(book_id,format_id,cost) values (5,4,34.90);
insert into copies(book_id,format_id,cost) values (5,4,34.90);
insert into copies(book_id,format_id,cost) values (5,4,34.90);
insert into copies(book_id,format_id,cost) values (5,4,34.90);
insert into copies(book_id,format_id,cost) values (5,4,34.90);
insert into copies(book_id,format_id,cost) values (5,4,34.90);


insert into copies(book_id,format_id,cost) values (6,1,23.90);
insert into copies(book_id,format_id,cost) values (6,1,23.90);
insert into copies(book_id,format_id,cost) values (6,1,23.90);

insert into copies(book_id,format_id,cost) values (6,2,17.90);
insert into copies(book_id,format_id,cost) values (6,2,17.90);
insert into copies(book_id,format_id,cost) values (6,2,17.90);

insert into copies(book_id,format_id,cost) values (6,3,17.90);
insert into copies(book_id,format_id,cost) values (6,3,17.90);
insert into copies(book_id,format_id,cost) values (6,3,17.90);


insert into copies(book_id,format_id,cost) values (7,1,26.90);
insert into copies(book_id,format_id,cost) values (7,1,26.90);
insert into copies(book_id,format_id,cost) values (7,1,26.90);

insert into copies(book_id,format_id,cost) values (7,2,19.90);
insert into copies(book_id,format_id,cost) values (7,2,19.90);
insert into copies(book_id,format_id,cost) values (7,2,19.90);

insert into copies(book_id,format_id,cost) values (7,3,19.90);
insert into copies(book_id,format_id,cost) values (7,3,19.90);
insert into copies(book_id,format_id,cost) values (7,3,19.90);


insert into copies(book_id,format_id,cost) values (8,1,29.90);
insert into copies(book_id,format_id,cost) values (8,1,29.90);
insert into copies(book_id,format_id,cost) values (8,1,29.90);

insert into copies(book_id,format_id,cost) values (8,2,18.90);
insert into copies(book_id,format_id,cost) values (8,2,18.90);
insert into copies(book_id,format_id,cost) values (8,2,18.90);

insert into copies(book_id,format_id,cost) values (8,3,18.90);
insert into copies(book_id,format_id,cost) values (8,3,18.90);
insert into copies(book_id,format_id,cost) values (8,3,18.90);


insert into copies(book_id,format_id,cost) values (9,1,24.90);
insert into copies(book_id,format_id,cost) values (9,1,24.90);
insert into copies(book_id,format_id,cost) values (9,1,24.90);

insert into copies(book_id,format_id,cost) values (9,2,18.90);
insert into copies(book_id,format_id,cost) values (9,2,18.90);
insert into copies(book_id,format_id,cost) values (9,2,18.90);

insert into copies(book_id,format_id,cost) values (9,4,15.90);
insert into copies(book_id,format_id,cost) values (9,4,15.90);
insert into copies(book_id,format_id,cost) values (9,4,15.90);


insert into copies(book_id,format_id,cost) values (10,1,29.90);
insert into copies(book_id,format_id,cost) values (10,1,29.90);
insert into copies(book_id,format_id,cost) values (10,1,29.90);

insert into copies(book_id,format_id,cost) values (10,2,29.90);
insert into copies(book_id,format_id,cost) values (10,2,29.90);
insert into copies(book_id,format_id,cost) values (10,2,29.90);

insert into copies(book_id,format_id,cost) values (10,4,29.90);
insert into copies(book_id,format_id,cost) values (10,4,29.90);
insert into copies(book_id,format_id,cost) values (10,4,29.90);


insert into copies(book_id,format_id,cost) values (11,1,29.90);
insert into copies(book_id,format_id,cost) values (11,1,29.90);
insert into copies(book_id,format_id,cost) values (11,1,29.90);

insert into copies(book_id,format_id,cost) values (11,2,29.90);
insert into copies(book_id,format_id,cost) values (11,2,29.90);
insert into copies(book_id,format_id,cost) values (11,2,29.90);

insert into copies(book_id,format_id,cost) values (11,4,29.90);
insert into copies(book_id,format_id,cost) values (11,4,29.90);
insert into copies(book_id,format_id,cost) values (11,4,29.90);


insert into copies(book_id,format_id,cost) values (12,1,29.90);
insert into copies(book_id,format_id,cost) values (12,1,29.90);
insert into copies(book_id,format_id,cost) values (12,1,29.90);

insert into copies(book_id,format_id,cost) values (12,2,29.90);
insert into copies(book_id,format_id,cost) values (12,2,29.90);
insert into copies(book_id,format_id,cost) values (12,2,29.90);

insert into copies(book_id,format_id,cost) values (12,4,29.90);
insert into copies(book_id,format_id,cost) values (12,4,29.90);
insert into copies(book_id,format_id,cost) values (12,4,29.90);


insert into copies(book_id,format_id,cost) values (13,1,29.90);
insert into copies(book_id,format_id,cost) values (13,1,29.90);
insert into copies(book_id,format_id,cost) values (13,1,29.90);

insert into copies(book_id,format_id,cost) values (13,2,29.90);
insert into copies(book_id,format_id,cost) values (13,2,29.90);
insert into copies(book_id,format_id,cost) values (13,2,29.90);

insert into copies(book_id,format_id,cost) values (14,4,29.90);
insert into copies(book_id,format_id,cost) values (14,4,29.90);
insert into copies(book_id,format_id,cost) values (14,4,29.90);


insert into copies(book_id,format_id,cost) values (15,1,29.90);
insert into copies(book_id,format_id,cost) values (15,1,29.90);
insert into copies(book_id,format_id,cost) values (15,1,29.90);

insert into copies(book_id,format_id,cost) values (15,2,29.90);
insert into copies(book_id,format_id,cost) values (15,2,29.90);
insert into copies(book_id,format_id,cost) values (15,2,29.90);

insert into copies(book_id,format_id,cost) values (16,4,29.90);
insert into copies(book_id,format_id,cost) values (16,4,29.90);
insert into copies(book_id,format_id,cost) values (16,4,29.90);


insert into copies(book_id,format_id,cost) values (17,1,29.90);
insert into copies(book_id,format_id,cost) values (17,1,29.90);
insert into copies(book_id,format_id,cost) values (17,1,29.90);

insert into copies(book_id,format_id,cost) values (17,2,29.90);
insert into copies(book_id,format_id,cost) values (17,2,29.90);
insert into copies(book_id,format_id,cost) values (17,2,29.90);

insert into copies(book_id,format_id,cost) values (17,3,29.90);
insert into copies(book_id,format_id,cost) values (17,3,29.90);
insert into copies(book_id,format_id,cost) values (17,3,29.90);



insert into copies(book_id,format_id,cost) values (18,1,26.90);
insert into copies(book_id,format_id,cost) values (18,1,26.90);
insert into copies(book_id,format_id,cost) values (18,1,26.90);

insert into copies(book_id,format_id,cost) values (18,2,18.90);
insert into copies(book_id,format_id,cost) values (18,2,18.90);
insert into copies(book_id,format_id,cost) values (18,2,18.90);

insert into copies(book_id,format_id,cost) values (18,3,19.90);
insert into copies(book_id,format_id,cost) values (18,3,19.90);
insert into copies(book_id,format_id,cost) values (18,3,19.90);



insert into copies(book_id,format_id,cost) values (19,1,26.90);
insert into copies(book_id,format_id,cost) values (19,1,26.90);
insert into copies(book_id,format_id,cost) values (19,1,26.90);
insert into copies(book_id,format_id,cost) values (19,1,26.90);
insert into copies(book_id,format_id,cost) values (19,1,26.90);
insert into copies(book_id,format_id,cost) values (19,1,26.90);

insert into copies(book_id,format_id,cost) values (20,2,18.90);
insert into copies(book_id,format_id,cost) values (20,2,18.90);
insert into copies(book_id,format_id,cost) values (20,2,18.90);

insert into copies(book_id,format_id,cost) values (20,3,19.90);
insert into copies(book_id,format_id,cost) values (20,3,19.90);
insert into copies(book_id,format_id,cost) values (20,3,19.90);



insert into copies(book_id,format_id,cost) values (21,1,28.90);
insert into copies(book_id,format_id,cost) values (21,1,28.90);
insert into copies(book_id,format_id,cost) values (21,1,28.90);
insert into copies(book_id,format_id,cost) values (21,1,28.90);
insert into copies(book_id,format_id,cost) values (21,1,28.90);
insert into copies(book_id,format_id,cost) values (21,1,28.90);
insert into copies(book_id,format_id,cost) values (21,1,28.90);
insert into copies(book_id,format_id,cost) values (21,1,28.90);
insert into copies(book_id,format_id,cost) values (21,1,28.90);

insert into copies(book_id,format_id,cost) values (22,2,18.90);
insert into copies(book_id,format_id,cost) values (22,2,18.90);
insert into copies(book_id,format_id,cost) values (22,2,18.90);

insert into copies(book_id,format_id,cost) values (23,2,19.90);
insert into copies(book_id,format_id,cost) values (23,2,19.90);
insert into copies(book_id,format_id,cost) values (23,2,19.90);

insert into copies(book_id,format_id,cost) values (24,1,19.90);
insert into copies(book_id,format_id,cost) values (24,1,19.90);
insert into copies(book_id,format_id,cost) values (24,1,19.90);
insert into copies(book_id,format_id,cost) values (24,1,19.90);
insert into copies(book_id,format_id,cost) values (24,1,19.90);


insert into copies(book_id,format_id,cost) values (25,2,17.90);
insert into copies(book_id,format_id,cost) values (25,2,17.90);
insert into copies(book_id,format_id,cost) values (25,2,17.90);

insert into copies(book_id,format_id,cost) values (25,2,17.90);
insert into copies(book_id,format_id,cost) values (25,2,17.90);
insert into copies(book_id,format_id,cost) values (25,2,17.90);


insert into copies(book_id,format_id,cost) values (26,1,24.90);
insert into copies(book_id,format_id,cost) values (26,1,24.90);
insert into copies(book_id,format_id,cost) values (26,1,24.90);
insert into copies(book_id,format_id,cost) values (26,1,24.90);
insert into copies(book_id,format_id,cost) values (26,1,24.90);

insert into copies(book_id,format_id,cost) values (27,2,17.90);
insert into copies(book_id,format_id,cost) values (27,2,17.90);
insert into copies(book_id,format_id,cost) values (27,2,17.90);

insert into copies(book_id,format_id,cost) values (27,4,17.90);
insert into copies(book_id,format_id,cost) values (27,4,17.90);
insert into copies(book_id,format_id,cost) values (27,4,17.90);



insert into copies(book_id,format_id,cost) values (28,1,22.90);
insert into copies(book_id,format_id,cost) values (28,1,22.90);
insert into copies(book_id,format_id,cost) values (28,1,22.90);
insert into copies(book_id,format_id,cost) values (28,1,22.90);
insert into copies(book_id,format_id,cost) values (28,1,22.90);

insert into copies(book_id,format_id,cost) values (29,1,17.90);
insert into copies(book_id,format_id,cost) values (29,1,17.90);
insert into copies(book_id,format_id,cost) values (29,1,17.90);

insert into copies(book_id,format_id,cost) values (29,1,17.90);
insert into copies(book_id,format_id,cost) values (29,1,17.90);
insert into copies(book_id,format_id,cost) values (29,1,17.90);



insert into copies(book_id,format_id,cost) values (30,1,23.90);
insert into copies(book_id,format_id,cost) values (30,1,23.90);
insert into copies(book_id,format_id,cost) values (30,1,23.90);
insert into copies(book_id,format_id,cost) values (30,1,23.90);
insert into copies(book_id,format_id,cost) values (30,1,23.90);

insert into copies(book_id,format_id,cost) values (30,1,23.90);
insert into copies(book_id,format_id,cost) values (30,1,23.90);
insert into copies(book_id,format_id,cost) values (30,1,23.90);

insert into copies(book_id,format_id,cost) values (30,1,23.90);
insert into copies(book_id,format_id,cost) values (30,1,23.90);
insert into copies(book_id,format_id,cost) values (30,1,23.90);



insert into copies(book_id,format_id,cost) values (31,1,23.90);
insert into copies(book_id,format_id,cost) values (31,1,23.90);
insert into copies(book_id,format_id,cost) values (31,1,23.90);
insert into copies(book_id,format_id,cost) values (31,1,23.90);
insert into copies(book_id,format_id,cost) values (31,1,23.90);

insert into copies(book_id,format_id,cost) values (31,1,23.90);
insert into copies(book_id,format_id,cost) values (31,1,23.90);
insert into copies(book_id,format_id,cost) values (31,1,23.90);

insert into copies(book_id,format_id,cost) values (31,1,23.90);
insert into copies(book_id,format_id,cost) values (31,1,23.90);
insert into copies(book_id,format_id,cost) values (31,1,23.90);


insert into copies(book_id,format_id,cost) values (32,4,24.90);
insert into copies(book_id,format_id,cost) values (32,4,24.90);
insert into copies(book_id,format_id,cost) values (32,4,24.90);
insert into copies(book_id,format_id,cost) values (32,4,24.90);
insert into copies(book_id,format_id,cost) values (32,4,24.90);

insert into copies(book_id,format_id,cost) values (32,4,24.90);
insert into copies(book_id,format_id,cost) values (32,4,24.90);
insert into copies(book_id,format_id,cost) values (32,4,24.90);

insert into copies(book_id,format_id,cost) values (32,4,24.90);
insert into copies(book_id,format_id,cost) values (32,4,24.90);
insert into copies(book_id,format_id,cost) values (32,4,24.90);

insert into copies(book_id,format_id,cost) values (33,2,24.90);
insert into copies(book_id,format_id,cost) values (33,2,24.90);
insert into copies(book_id,format_id,cost) values (33,2,24.90);
insert into copies(book_id,format_id,cost) values (33,2,24.90);
insert into copies(book_id,format_id,cost) values (33,2,24.90);
insert into copies(book_id,format_id,cost) values (33,2,24.90);


insert into copies(book_id,format_id,cost) values (34,1,27.90);
insert into copies(book_id,format_id,cost) values (34,1,27.90);
insert into copies(book_id,format_id,cost) values (34,1,27.90);
insert into copies(book_id,format_id,cost) values (35,1,27.90);
insert into copies(book_id,format_id,cost) values (35,1,27.90);
insert into copies(book_id,format_id,cost) values (35,1,27.90);

insert into copies(book_id,format_id,cost) values (37,2,27.90);
insert into copies(book_id,format_id,cost) values (37,2,27.90);
insert into copies(book_id,format_id,cost) values (37,2,27.90);
insert into copies(book_id,format_id,cost) values (37,2,27.90);
insert into copies(book_id,format_id,cost) values (37,2,27.90);
insert into copies(book_id,format_id,cost) values (37,2,27.90);

------

insert into customers (first_name, last_name,create_date,phone_number,email,sex,birth_date,address_id, login, password, dialing_code) values ('Jan','Kowalski',DATE_SUB(CURDATE(), INTERVAL 2 MONTH),501502504,'jankowalski@gmail.com','M','1981-12-14',1,'jano123','jano123!','48');

insert into customers (first_name, last_name,create_date,phone_number,email,sex,birth_date,address_id, login, password, dialing_code) values ('Anna','Nowak',DATE_SUB(CURDATE(), INTERVAL 10 MONTH),501502505,'annanowak@onet.pl','F','1986-04-30',21,'annanowak','annanowak&$51','48');
select * from addresses;
insert into customers (first_name, last_name,create_date,phone_number,email,sex,birth_date,address_id, login, password, dialing_code) values ('Leszek','Wójcik',DATE_SUB(CURDATE(), INTERVAL 2 YEAR),501502506,'lwoj@wp.pl','M','1979-05-29',99,'lechumoc','wojciktrudnehaslo','420');

insert into customers (first_name, last_name,create_date,email,sex,birth_date,address_id, login, password, dialing_code) values ('Krystian','Bąkowicz',sysdate(),'krycha@gmail.com','M','1974-11-28',75,'krycha','1krycha$!','48');

insert into customers (first_name, last_name,create_date,email,sex,birth_date,address_id, login, password, dialing_code) values ('Katarzyna','Marczak',DATE_SUB(CURDATE(), INTERVAL 2 DAY),'katamar@gmail.com','F','1992-06-23',26,'kasiamar','kotek90','48');

insert into customers (first_name, last_name,create_date,phone_number,sex,birth_date,address_id, login, password, dialing_code, email) values ('Karolina','Kowalik',DATE_SUB(CURDATE(), INTERVAL 45 DAY),501502509,'F','1967-06-01',39,'kariKow','kotek90','48', 'karolina1967@gmail.com');

insert into customers (first_name, last_name,create_date,phone_number,email,sex,birth_date,address_id, login, password, dialing_code) values ('Barbara','Jaguszewska',DATE_SUB(CURDATE(), INTERVAL 54 DAY),501502510,'b.jagu@wp.pl','F','1989-06-12',82,'basiula','jagu1989','48');

insert into customers (first_name, last_name,create_date,phone_number,sex,birth_date,address_id, login, password, dialing_code, email) values ('Tomasz','Mentos',DATE_SUB(CURDATE(), INTERVAL 76 DAY),501502511,'M','1992-01-01',10,'TomuleC','Mentos20!','48','kamulectamulec@wp.pl');

insert into customers (first_name, last_name,create_date,phone_number,email,sex,birth_date,address_id, login, password, dialing_code) values ('Przemysław','Ławnik',DATE_SUB(CURDATE(), INTERVAL 82 DAY),501502512,'ławnik@wp.pl','M','1987-04-12',82, 'przemo','bech87','48');


insert into payment_types(name,code) values ('cash','CASH');
insert into payment_types(name,code) values ('debit card','DEBIT_CARD');
insert into payment_types(name,code) values ('credit card','CREDIT_CARD');
insert into payment_types(name,code) values ('PayPal','PAYPAL');
insert into payment_types(name,code) values ('Blik','BLIK');



insert into orders(customer_id,discount,payment_id, order_date) values (1,3,1,DATE_ADD((select create_date from customers where id=1), INTERVAL 2 DAY) );
select * from copies;
insert into order_details(order_id,copy_id) values(1,1);
insert into order_details(order_id,copy_id) values(1,4);
insert into order_details(order_id,copy_id) values(1,9);
insert into order_details(order_id,copy_id) values(1,12);
insert into order_details(order_id,copy_id) values(1,34);


insert into orders(customer_id,discount,payment_id,order_date) values (1,0,1,DATE_ADD((select create_date from customers where id=1), INTERVAL 4 DAY));
insert into order_details(order_id,copy_id) values(2,210);



insert into orders(customer_id,discount,payment_id,order_date) values (9,0,3,DATE_ADD((select create_date from customers where id=9), INTERVAL 12 DAY));
insert into order_details(order_id,copy_id) values(3,65);
insert into order_details(order_id,copy_id) values(3,72);
insert into order_details(order_id,copy_id) values(3,99);

insert into orders(customer_id,discount,payment_id,order_date) values (7,0,3,DATE_ADD((select create_date from customers where id=7), INTERVAL 1 DAY));
insert into order_details(order_id,copy_id) values(4,32);
insert into order_details(order_id,copy_id) values(4,156);
insert into order_details(order_id,copy_id) values(4,138);


--
insert into orders(customer_id,discount,payment_id,order_date) values (2,0,3,DATE_ADD((select create_date from customers where id=2), INTERVAL 2 DAY));
insert into order_details(order_id,copy_id) values(5,2);
insert into order_details(order_id,copy_id) values(5,21);

insert into orders(customer_id,discount,payment_id,order_date) values (2,0,2,DATE_ADD((select create_date from customers where id=2), INTERVAL 11 DAY));
insert into order_details(order_id,copy_id) values(2,187);


insert into orders(customer_id,discount,payment_id,order_date) values (2,0,1,DATE_ADD((select create_date from customers where id=2), INTERVAL 1 DAY));
insert into order_details(order_id,copy_id) values(7,214);

--
insert into orders(customer_id,discount,payment_id,order_date) values (3,0,1,DATE_ADD((select create_date from customers where id=3), INTERVAL 1 DAY));
insert into order_details(order_id,copy_id) values(8,3);
insert into order_details(order_id,copy_id) values(8,5);
insert into order_details(order_id,copy_id) values(8,16);

insert into orders(customer_id,discount,payment_id,order_date) values (3,0,1,DATE_ADD((select create_date from customers where id=3), INTERVAL 2 DAY));
insert into order_details(order_id,copy_id) values(9,186);
insert into order_details(order_id,copy_id) values(9,213);
--
insert into orders(customer_id,discount,payment_id,order_date) values (4,0,4,DATE_ADD((select create_date from customers where id=4), INTERVAL 12 DAY));
insert into order_details(order_id,copy_id) values(10,273);
--
insert into orders(customer_id,discount,payment_id,order_date) values (5,0,2,DATE_ADD((select create_date from customers where id=5), INTERVAL 7 DAY));
insert into order_details(order_id,copy_id) values(11,147);
insert into order_details(order_id,copy_id) values(11,18);
insert into order_details(order_id,copy_id) values(11,13);
--
insert into orders(customer_id,discount,payment_id,order_date) values (6,5,1,DATE_ADD((select create_date from customers where id=6), INTERVAL 1 DAY));
insert into order_details(order_id,copy_id) values(12,10);
insert into order_details(order_id,copy_id) values(12,41);
insert into order_details(order_id,copy_id) values(12,53);
insert into order_details(order_id,copy_id) values(12,28);
insert into order_details(order_id,copy_id) values(12,188);
insert into order_details(order_id,copy_id) values(12,173);
insert into order_details(order_id,copy_id) values(12,111);
insert into order_details(order_id,copy_id) values(12,129);
insert into order_details(order_id,copy_id) values(12,87);

-- select * from customers;
insert into orders(customer_id,discount,payment_id,order_date) values (7,0,2,DATE_ADD((select create_date from customers where id=7), INTERVAL 2 DAY));
insert into order_details(order_id,copy_id) values(13,66);
insert into order_details(order_id,copy_id) values(13,89);
insert into order_details(order_id,copy_id) values(13,168);


