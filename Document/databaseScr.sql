CREATE TABLE user_account
(
id int NOT NULL,
name varchar(255) NOT NULL,
doj datetime,
login_date datetime,
type int(10),
pwd varbinary(225),
PRIMARY KEY (id)
);

CREATE TABLE credit
(
cr_id int NOT NULL,
cr_amount double NOT NULL,
cr_date datetime,
trans_id int(50),
remarks varchar(255),
user_id int(50),
common_id int(50),
PRIMARY KEY (cr_id)
);
CREATE TABLE debit 
(
de_id int NOT NULL,
de_amount double NOT NULL,
de_date datetime,
trans_id int(50),
remarks varchar(255),
user_id int(50),
common_id int(50),
PRIMARY KEY (de_id)
);

CREATE TABLE transaction
(
trans_id int NOT NULL,
trans_from_ac int(50),
trans_to_ac int(50),
date datetime,
status bit,
PRIMARY KEY (trans_id )
);

CREATE TABLE common_item
(
common_id int NOT NULL,
name varchar(100),
type int(5),
PRIMARY KEY (common_id)
);

CREATE TABLE debt
(
id int NOT NULL,
de_id int(50),
trans_id int(50),
PRIMARY KEY (id)
);


















