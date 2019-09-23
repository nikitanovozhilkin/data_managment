CREATE TABLE FILMS (
  title varchar(50) NOT NULL,
  id    int         NOT NULL,
  country varchar(20) NOT NULL,
  box_office int      NOT NULL,
  release_date date   NOT NULL,
  PRIMARY KEY(id)
  );
  
  CREATE TABLE PERSONS ( 
   id    int         NOT NULL, 
   fio varchar(20) NOT NULL,    
    PRIMARY KEY(id)
  );  
    
CREATE TABLE PERSONS2CONTENT (
  person_id int  NOT NULL,
  film_id int  NOT NULL, 
  person_type varchar(20) NOT NULL,    
  PRIMARY KEY(person_id)
  ); 
  START TRANSACTION;
INSERT INTO FILMS( title,id,country, box_office,release_date) VALUES ('The Shawshank Redemption',1,'USA',59461381,'1994-09-10');
COMMIT;
  START TRANSACTION;
 INSERT INTO PERSONS (id,fio) VALUES ( 1, 'Tim Robins');
 INSERT INTO PERSONS (id,fio) VALUES ( 2, 'Morgan Freeman');
 INSERT INTO PERSONS (id,fio) VALUES ( 3, 'Bob Ganton');
 INSERT INTO PERSONS (id,fio) VALUES ( 4, 'William Sadler');
 INSERT INTO PERSONS (id,fio) VALUES ( 5, 'Klancy Brown');
 INSERT INTO PERSONS (id,fio) VALUES ( 6, 'Dgil Bellose');
 INSERT INTO PERSONS (id,fio) VALUES ( 7, 'Mark Rolstone');
 INSERT INTO PERSONS (id,fio) VALUES ( 8, 'Frank Darabatone');
 COMMIT;
 START TRANSACTION;
 INSERT INTO PERSONS2CONTENT(person_id,film_id,person_type) VALUES (1,1'actor');
 INSERT INTO PERSONS2CONTENT(person_id,film_id,person_type) VALUES (2,1'actor');
 INSERT INTO PERSONS2CONTENT(person_id,film_id,person_type) VALUES (3,1'actor');
 INSERT INTO PERSONS2CONTENT(person_id,film_id,person_type) VALUES (4,1'actor');
 INSERT INTO PERSONS2CONTENT(person_id,film_id,person_type) VALUES (5,1'actor');
 INSERT INTO PERSONS2CONTENT(person_id,film_id,person_type) VALUES (6,1'actor');
 INSERT INTO PERSONS2CONTENT(person_id,film_id,person_type) VALUES (7,1'actor');
 INSERT INTO PERSONS2CONTENT(person_id,film_id,person_type) VALUES (8,1'producer');
 COMMIT;