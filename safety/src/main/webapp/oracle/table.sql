/* Drop Triggers */
/*
DROP TRIGGER TRI_CITY_cityno;
DROP TRIGGER TRI_COUNTRY_couno;
DROP TRIGGER TRI_HOTEL_hno;
DROP TRIGGER TRI_QNA_qno;
DROP TRIGGER TRI_RESERVATION_resno;
DROP TRIGGER TRI_REVIEW_revno;
DROP TRIGGER TRI_REV_COMMENT_comno;
DROP TRIGGER TRI_REV_HOTEL_rhno;
DROP TRIGGER TRI_ROOM_roomno;
DROP TRIGGER TRI_SAFETY_sno;
DROP TRIGGER TRI_USERS_uno;
*/


/* Drop Tables */

DROP TABLE QNA CASCADE CONSTRAINTS;
DROP TABLE REV_HOTEL CASCADE CONSTRAINTS;
DROP TABLE RESERVATION CASCADE CONSTRAINTS;
DROP TABLE ROOM CASCADE CONSTRAINTS;
DROP TABLE HOTEL CASCADE CONSTRAINTS;
DROP TABLE HOTEL_GOOD CASCADE CONSTRAINTS;
DROP TABLE REV_COMMENT CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE CITY CASCADE CONSTRAINTS;
DROP TABLE SAFETY CASCADE CONSTRAINTS;
DROP TABLE COUNTRY CASCADE CONSTRAINTS;
DROP TABLE USERS CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_CITY_cityno;
DROP SEQUENCE SEQ_COUNTRY_couno;
DROP SEQUENCE SEQ_HOTEL_hno;
DROP SEQUENCE SEQ_QNA_qno;
DROP SEQUENCE SEQ_RESERVATION_resno;
DROP SEQUENCE SEQ_REVIEW_revno;
DROP SEQUENCE SEQ_REV_COMMENT_comno;
DROP SEQUENCE SEQ_REV_HOTEL_rhno;
DROP SEQUENCE SEQ_ROOM_roomno;
DROP SEQUENCE SEQ_SAFETY_sno;
DROP SEQUENCE SEQ_USERS_uno;
DROP SEQUENCE SEQ_HOTEL_hgno;



/* Create Sequences */

CREATE SEQUENCE SEQ_CITY_cityno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_COUNTRY_couno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_HOTEL_hno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_QNA_qino1 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_QNA_qino2 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_QNA_qino3 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_QNA_qno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_RESERVATION_resno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REVIEW_revno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REV_COMMENT_comno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REV_HOTEL_rhno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ROOM_roomno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_SAFETY_sno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_USERS_uno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_HOTEL_GOOD_hgno INCREMENT BY 1 START WITH 1;

/* ÏúÑÏùò ÏãúÌÄÄÏä§Í∞Ä Ï†ÅÏö©ÌñàÏùÑ Îïå 2Î∂ÄÌÑ∞ numberingÏù¥ ÎêúÎã§Î©¥ ÏïÑÎûòÏùò ÏãúÌÄÄÏä§Î°ú ÎßåÎì§Ïñ¥ÏÑú DBÎ•º Íµ¨ÏÑ±ÌïòÏÑ∏Ïöî. */
/*
CREATE SEQUENCE SEQ_CITY_cityno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_COUNTRY_couno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_HOTEL_hno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_QNA_qino1 INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_QNA_qino2 INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_QNA_qino3 INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_QNA_qno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_RESERVATION_resno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_REVIEW_revno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_REV_COMMENT_comno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_REV_HOTEL_rhno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_ROOM_roomno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_SAFETY_sno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_USERS_uno INCREMENT BY 1 START WITH 0;
CREATE SEQUENCE SEQ_HOTEL_GOOD_hgno INCREMENT BY 1 START WITH 0;
*/

/* Create Tables */

CREATE TABLE CITY
(
	cityno number(10,0) constraint city_cityno_nn NOT NULL,
	couno number(3,0) constraint city_cunno_nn NOT NULL,
	cityname varchar2(50) constraint city_cityname_nn NOT NULL,
	cityename varchar2(50) constraint city_cityename_nn NOT NULL,
	constraint city_cityno_pk PRIMARY KEY (cityno)
);




CREATE TABLE COUNTRY
(
	couno number(3,0) constraint country_couno_nn NOT NULL,
	cname varchar2(50) constraint country_cname_nn NOT NULL constraint country_cname_uk UNIQUE,
	cename varchar2(50) constraint country_cename_nn NOT NULL constraint country_cename_uk UNIQUE,
	continent varchar2(10) constraint country_continent_nn NOT NULL, 
	constraint country_couno_pk PRIMARY KEY (couno)
);


CREATE TABLE HOTEL
(
	hno number(7,0) constraint hotel_hno_nn NOT NULL,
	cityno number(10,0) constraint hotel_cityno_nn NOT NULL,
	hname varchar2(100) constraint hotel_hname_nn NOT NULL,
	good number(10,0) DEFAULT 0,
	address varchar2(100) constraint hotel_address_nn NOT NULL,
	lat varchar2(20) constraint hotel_lat_nn NOT NULL,
	lng varchar2(20) constraint hotel_lng_nn NOT NULL,
	constraint hotel_hno_pk PRIMARY KEY (hno)
);

CREATE TABLE HOTEL_GOOD
(
	hgno number(10,0) constraint hotel_good_hgno_nn NOT NULL,
	hno number(7,0) constraint hotel_good_hno_nn NOT NULL,
	uno number(7,0) constraint hotel_good_uno_nn NOT NULL,
	constraint hotel_good_hgno_pk PRIMARY KEY (hgno)
);

CREATE TABLE QNA
(
    qino1 number(7,0),
    thetext1 varchar2(1000),
    thefile1 varchar2(1000)
    DEFAULT '1',
    qino2 number(7,0),
    thetext2 varchar2(1000),
    thefile2 varchar2(1000)
    DEFAULT '1',
    qino3 number(7,0),
    thetext3 varchar2(1000),
    thefile3 varchar2(1000)
    DEFAULT '1',
	qno number(7,0) constraint qna_qno_nn NOT NULL,
	uno number(7,0) constraint qna_uno_nn NOT NULL,
	hno number(10,0) constraint qna_hno_nn NOT NULL,
	title varchar2(1000) constraint qna_title_nn NOT NULL,
	question clob constraint qna_question_nn NOT NULL,
	answer clob,
	qopen number(1) 
    DEFAULT 1 
    constraint qna_qopen_nn NOT NULL 
    constraint qna_qopen_ck CHECK(qopen = 0 or qopen = 1),
	createdate date DEFAULT SYSDATE 
    constraint qna_createdate_nn NOT NULL,
	constraint qna_qno_pk PRIMARY KEY (qno)
);


CREATE TABLE RESERVATION
(
	resno number(8) constraint reservation_resno_nn NOT NULL,
	uno number(7,0) constraint reservation_uno_nn NOT NULL,
	roomno number(10,0) constraint reservation_roomno_nn NOT NULL,
	room number(4,0) constraint reservation_room_nn NOT NULL,
	sdate date constraint reservation_sdate_nn NOT NULL,
	edate date constraint reservation_edate_nn NOT NULL,
	createdate date DEFAULT SYSDATE constraint reservation_createdate_nn NOT NULL,
	constraint reservation_resno_pk PRIMARY KEY (resno)
);


CREATE TABLE REVIEW
(
	revno number(7,0) constraint review_revno_nn NOT NULL,
	userid varchar2(20)  constraint review_userid_nn NOT NULL,
	cityno number(10,0) constraint review_cityno_nn NOT NULL,
	title varchar2(1000) constraint review_title_nn NOT NULL,
	content clob constraint review_content_nn NOT NULL,
	viewscount number(10,0) DEFAULT 0 constraint review_viewscount_nn NOT NULL,
	good number(10,0) DEFAULT 0 constraint review_good_nn NOT NULL,
	createdate date DEFAULT SYSDATE constraint review_createdate_nn NOT NULL,
	constraint review_revno_pk PRIMARY KEY (revno)
);

select * from tab;

CREATE TABLE REV_COMMENT
(
	comno number(10,0) constraint rev_comment_comno_nn NOT NULL,
	revno number(7,0) constraint rev_comment_revno__nn NOT NULL,
	uno number(7,0) constraint rev_comment_uno_nn NOT NULL,
	comcontent varchar2(1000),
	createdate date DEFAULT SYSDATE constraint rev_comment_createdate_nn NOT NULL,
	constraint rev_comment_comno_pk PRIMARY KEY (comno)
);


CREATE TABLE REV_HOTEL
(
	rhno number(10,0) constraint rev_hotel_rhno_nn NOT NULL,
	revno number(7,0) constraint rev_hotel_revno_nn NOT NULL,
	hno number(7,0) constraint rev_hotel_hno_nn NOT NULL,
	constraint rev_hotel_rhno_pk PRIMARY KEY (rhno)
);

CREATE TABLE ROOM
(
	roomno number(10,0) constraint room_roomno_nn NOT NULL,
	hno number(7,0) constraint room_hno_nn NOT NULL,
	num number(4,0) constraint room_num_nn NOT NULL,
	constraint room_roomno_pk PRIMARY KEY (roomno)
);

CREATE TABLE SAFETY
(
	sno number(4,0) constraint safety_sno_nn NOT NULL,
	couno number(3,0) constraint safety_couno_nn NOT NULL,
	title varchar2(1000) constraint safety_title_nn NOT NULL,
	content clob constraint safety_content_nn NOT NULL,
	id varchar2(20) constraint safety_id_nn NOT NULL,
	createdate date DEFAULT SYSDATE constraint safety_createdate_nn NOT NULL,
	constraint safety_sno_pk PRIMARY KEY (sno)
);


CREATE TABLE USERS
(
	uno number(7,0) constraint users_uno_nn NOT NULL,
	userid varchar2(20)  constraint users_userid_nn NOT NULL constraint users_userid_uk UNIQUE,
	passwd varchar2(20) constraint users_passwd_nn NOT NULL,
	email varchar2(30) constraint users_email_nn NOT NULL constraint users_email_uk UNIQUE,
	uname varchar2(20) constraint users_uname_nn NOT NULL constraint users_uname_uk UNIQUE,
	name varchar2(20) constraint users_name_nn NOT NULL,
	passport varchar2(20) constraint users_passport_nn NOT NULL,
	sex varchar2(1) constraint users_sex_nn NOT NULL constraint users_sex_ck CHECK(sex = 'M' or sex = 'F'),
	birth varchar2(20) constraint users_birth_nn NOT NULL,
	post varchar2(5) constraint users_post_nn NOT NULL,
	address1 varchar2(500) constraint users_address1_nn NOT NULL,
	address2 varchar2(500) constraint users_address2_nn NOT NULL,
	createdate date DEFAULT SYSDATE constraint users_createdate_nn NOT NULL,
	eaccess number(1) DEFAULT 0 constraint users_eaccess_nn NOT NULL constraint users_eaccess_ck CHECK(eaccess = 0 or eaccess = 1),
	constraint users_uno_pk PRIMARY KEY (uno)
);



/* Create Foreign Keys */

ALTER TABLE HOTEL
	ADD constraint hotel_cityno_fk
    FOREIGN KEY (cityno)
	REFERENCES CITY (cityno)
;

ALTER TABLE HOTEL_GOOD
	ADD constraint hotel_good_hno_fk
    FOREIGN KEY (hno)
	REFERENCES HOTEL (hno)
;

ALTER TABLE HOTEL_GOOD
	ADD constraint hotel_good_uno_fk
    FOREIGN KEY (uno)
	REFERENCES USERS (uno)
;


ALTER TABLE REVIEW
	ADD constraint review_cityno_fk
	FOREIGN KEY (cityno)
	REFERENCES CITY (cityno)
;


ALTER TABLE CITY
	ADD constraint city_couno_fk
	FOREIGN KEY (couno)
	REFERENCES COUNTRY (couno)
;


ALTER TABLE SAFETY
	ADD constraint safety_couno_fk
	FOREIGN KEY (couno)
	REFERENCES COUNTRY (couno)
;


ALTER TABLE QNA
	ADD constraint qna_hno_fk
    FOREIGN KEY (hno)
	REFERENCES HOTEL (hno)
;


ALTER TABLE RESERVATION
	ADD constraint reservation_roomno_fk
	FOREIGN KEY (roomno)
	REFERENCES ROOM (roomno)
;


ALTER TABLE REV_HOTEL
	ADD constraint rev_hotel_hno_fk
	FOREIGN KEY (hno)
	REFERENCES HOTEL (hno)
;


ALTER TABLE REV_COMMENT
	ADD constraint rev_comment_revno_fk
	FOREIGN KEY (revno)
	REFERENCES REVIEW (revno)
;


ALTER TABLE REV_HOTEL
	ADD constraint rev_hotel_revno_fk
	FOREIGN KEY (revno)
	REFERENCES REVIEW (revno)
;


ALTER TABLE QNA
	ADD constraint qna_uno_fk
	FOREIGN KEY (uno)
	REFERENCES USERS (uno)
;


ALTER TABLE RESERVATION
	ADD constraint reservation_uno_fk
	FOREIGN KEY (uno)
	REFERENCES USERS (uno)
;


ALTER TABLE REVIEW
	ADD constraint review_userid_fk
	FOREIGN KEY (userid)
	REFERENCES USERS (userid)
;


ALTER TABLE REV_COMMENT
	ADD constraint rev_comment_uno_fk
	FOREIGN KEY (uno)
	REFERENCES USERS (uno)
;



/* Create Triggers */
/*
CREATE OR REPLACE TRIGGER TRI_CITY_cityno BEFORE INSERT ON CITY
FOR EACH ROW
BEGIN
	SELECT SEQ_CITY_cityno.nextval
	INTO :new.cityno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_COUNTRY_couno BEFORE INSERT ON COUNTRY
FOR EACH ROW
BEGIN
	SELECT SEQ_COUNTRY_couno.nextval
	INTO :new.couno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_HOTEL_hno BEFORE INSERT ON HOTEL
FOR EACH ROW
BEGIN
	SELECT SEQ_HOTEL_hno.nextval
	INTO :new.hno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_QNA_qno BEFORE INSERT ON QNA
FOR EACH ROW
BEGIN
	SELECT SEQ_QNA_qno.nextval
	INTO :new.qno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_RESERVATION_resno BEFORE INSERT ON RESERVATION
FOR EACH ROW
BEGIN
	SELECT SEQ_RESERVATION_resno.nextval
	INTO :new.resno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_REVIEW_revno BEFORE INSERT ON REVIEW
FOR EACH ROW
BEGIN
	SELECT SEQ_REVIEW_revno.nextval
	INTO :new.revno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_REV_COMMENT_comno BEFORE INSERT ON REV_COMMENT
FOR EACH ROW
BEGIN
	SELECT SEQ_REV_COMMENT_comno.nextval
	INTO :new.comno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_REV_HOTEL_rhno BEFORE INSERT ON REV_HOTEL
FOR EACH ROW
BEGIN
	SELECT SEQ_REV_HOTEL_rhno.nextval
	INTO :new.rhno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_SAFETY_sno BEFORE INSERT ON SAFETY
FOR EACH ROW
BEGIN
	SELECT SEQ_SAFETY_sno.nextval
	INTO :new.sno
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_USERS_uno BEFORE INSERT ON USERS
FOR EACH ROW
BEGIN
	SELECT SEQ_USERS_uno.nextval
	INTO :new.uno
	FROM dual;
END;

/
*/


insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, 'øµ±π', 'United Kingdom', 'Europe');
=======
values(1, 'ÏòÅÍµ≠', 'United Kingdom', 'Europe');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, '«¡∂˚Ω∫', 'France', 'Europe');
=======
values(2, 'ÌîÑÎûëÏä§', 'French Republic', 'Europe');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, 'µ∂¿œ', 'Germany', 'Europe');
=======
values(3, 'ÎèÖÏùº', 'Germany', 'Europe');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, 'Ω∫∆‰¿Œ', 'Spain', 'Europe');
=======
values(4, 'Ïä§ÌéòÏù∏', 'Spain', 'Europe');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, '¿Ã≈ª∏Ææ∆', 'Italy', 'Europe');
=======
values(5, 'Ïù¥ÌÉàÎ¶¨ÏïÑ', 'Italy', 'Europe');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, '¿œ∫ª', 'Japan', 'Asia');
=======
values(6, 'ÏùºÎ≥∏', 'Japan', 'Asia');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, '¡ﬂ±π', 'China', 'Asia');
=======
values(7, 'Ï§ëÍµ≠', 'China', 'Asia');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, '¥Î∏∏', 'Taiwan', 'Asia');
=======
values(8, 'ÎåÄÎßå', 'Taiwan', 'Asia');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, 'πÃ±π', 'United States of America', 'America');
=======
values(9, 'ÎØ∏Íµ≠', 'United States of America', 'America');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into country(couno, cname, cename, continent)
<<<<<<< HEAD
values(SEQ_COUNTRY_couno.nextval, 'ƒ≥≥™¥Ÿ', 'Canada', 'America');
=======
values(10, 'Ï∫êÎÇòÎã§', 'Canada', 'America');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

commit;

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 1, '∑±¥¯', 'London');
=======
values (1, 1, 'Îü∞Îçò', 'London');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 1, '∏«√ºΩ∫≈Õ', 'Manchester');
=======
values (2, 1, 'Îß®Ï≤¥Ïä§ÌÑ∞', 'Manchester');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 1, '∏Æπˆ«Æ', 'Liverpool');
=======
values (3, 1, 'Î¶¨Î≤ÑÌíÄ', 'Liverpool');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 2, '∆ƒ∏Æ', 'Paris');
=======
values (4, 2, 'ÌååÎ¶¨', 'Paris');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 2, '∏ÆøÀ', 'Lyon');
=======
values (5, 2, 'Î¶¨Ïòπ', 'Lyon');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 2, '∏∂∏£ºº¿Ø', 'Marseille');
=======
values (6, 2, 'ÎßàÎ•¥ÏÑ∏Ïú†', 'Marseille');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 3, '∫£∏¶∏∞', 'Berlin');
=======
values (7, 3, 'Î≤†Î•ºÎ¶∞', 'Berlin');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 3, 'π¿«Ó', 'M?nchen');
=======
values (8, 3, 'ÎÆåÌó®', 'M√ºnchen');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 4, '∏∂µÂ∏ÆµÂ', 'Madrid');
=======
values (9, 4, 'ÎßàÎìúÎ¶¨Îìú', 'Madrid');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 4, 'πŸ∏£ºø∑Œ≥™', 'Barcelona');
=======
values (10, 4, 'Î∞îÎ•¥ÏÖÄÎ°úÎÇò', 'Barcelona');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 5, '∑Œ∏∂', 'Roma');
=======
values (11, 5, 'Î°úÎßà', 'Roma');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 5, 'π–∂Û≥Î', 'Millan');
=======
values (12, 5, 'Î∞ÄÎùºÎÖ∏', 'Millan');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 6, 'µµƒÏ', 'Tokyo');
=======
values (13, 6, 'ÎèÑÏøÑ', 'Tokyo');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 6, 'ƒÏ≈‰', 'Kyoto');
=======
values (14, 6, 'ÏøÑÌÜ†', 'Kyoto');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 6, 'ø¿ªÁƒ´', 'Osaka');
=======
values (15, 6, 'Ïò§ÏÇ¨Ïπ¥', 'Osaka');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 7, '∫£¿Ã¬°', 'Beijing');
=======
values (16, 7, 'Î≤†Ïù¥Ïßï', 'Beijing');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 7, 'ªÛ«œ¿Ã', 'Shanghai');
=======
values (17, 7, 'ÏÉÅÌïòÏù¥', 'Shanghai');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 8, '≈∏¿Ã∫£¿Ã', 'Taipei');
=======
values (18, 8, 'ÌÉÄÏù¥Î≤†Ïù¥', 'Taipei');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 9, '¥∫øÂ', 'New York');
=======
values (19, 9, 'Îâ¥Ïöï', 'New York');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 9, 'øˆΩÃ≈œ', 'Washington');
=======
values (20, 9, 'ÏõåÏã±ÌÑ¥', 'Washington');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 9, '∑ŒΩ∫æÿ¡©∑πΩ∫', 'Los Angeles');
=======
values (21, 9, 'Î°úÏä§Ïï§Ï†§Î†àÏä§', 'Los Angeles');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 10, '≈‰∑–≈‰', 'Toronto');
=======
values (22, 10, 'ÌÜ†Î°†ÌÜ†', 'Toronto');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 10, '∏Û≈‰∏Æø√', 'Montreal');
=======
values (23, 10, 'Î™¨ÌÜ†Î¶¨Ïò¨', 'Montreal');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

insert into city(cityno, couno, cityname, cityename)
<<<<<<< HEAD
values (SEQ_CITY_cityno.nextval, 10, 'ø¿≈∏øÕ', 'Ottawa');
=======
values (24, 10, 'Ïò§ÌÉÄÏôÄ', 'Ottawa');
>>>>>>> branch 'master' of https://github.com/SafetyTrip/SafetyTrip_Spring.git

commit;

select * from tab;

purge recyclebin;


select * from country;
select * from city;
select * from hotel;
select * from safety;
