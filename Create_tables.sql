/*
Detta är fler-radig kommentar!
*/
-- skapa tabellerna (detta en-radig kommentar)

CREATE TABLE STORES (
 STORENO             INTEGER NOT NULL,
 STORENAME           VARCHAR(25),
 TELEPHONE           VARCHAR(25),
 STREET              VARCHAR(25),
 HOUSENO             INTEGER,
 POSTALCODE          INTEGER,
 CITY                VARCHAR(25)
 );


CREATE TABLE EMPLOYEES (
 EMPLOYEENO          INTEGER NOT NULL,
 STORENO             INTEGER,
 SALARY              FLOAT,
 EMPLOYEENAME        VARCHAR(25),
 STOREROLE           VARCHAR(25)
 );


CREATE TABLE MEMBERS (
 MEMBERNO            INTEGER NOT NULL,
 STORENO             INTEGER,
 MEMBERNAME          VARCHAR(25),
 STARTDATE           DATE,
 STREET              VARCHAR(25),
 HOUSENO             INTEGER,
 POSTALCODE          INTEGER,
 CITY                VARCHAR(25)
);


CREATE TABLE MOVIES (
 MOVIENO            INTEGER NOT NULL,
 TITLE              VARCHAR (25),
 MOVIELENGTH        FLOAT
);

CREATE TABLE GENRES (
 MOVIENO            INTEGER NOT NULL,
 GENRE              VARCHAR(25) NOT NULL
);


CREATE TABLE MOVIESTAFF (
 IDNO               INTEGER NOT NULL,
 STAFFNAME          VARCHAR(25)
);


CREATE TABLE RESERVATIONS (
 MEMBERNO           INTEGER NOT NULL,
 MOVIENO            INTEGER NOT NULL,
 REGDATE            DATE NOT NULL,
 EXPIRATION         DATE
);


CREATE TABLE RENTALS (
 MEMBERNO           INTEGER NOT NULL,
 MOVIENO            INTEGER NOT NULL,
 RENTALDATE         DATE NOT NULL,
 RETURNDATE         DATE
);


CREATE TABLE WORKED_ON (
 MOVIENO            INTEGER NOT NULL,
 IDNO               INTEGER NOT NULL,
 MOVIEROLE          VARCHAR(25) NOT NULL
); 

CREATE TABLE AVAILABLE_IN (
 MOVIENO            INTEGER NOT NULL,
 STORENO            INTEGER NOT NULL,
 PRICE              FLOAT,
 NOCOPIES           INTEGER,
 SHELFNAME          VARCHAR(25)
);
