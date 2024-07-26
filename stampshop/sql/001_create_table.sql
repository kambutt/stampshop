DROP TABLE country;
CREATE TABLE country (
    country_id NUMBER NOT NULL,
    country_name VARCHAR2(80) NOT NULL,
    country_code VARCHAR2(10),
    CONSTRAINT pk_country PRIMARY KEY (country_id),
    CONSTRAINT uk_country_name UNIQUE (country_name)
);
DROP TABLE stampuser.stamp_list;
CREATE TABLE stampuser.stamp_list (
    stamp_list_id NUMBER NOT NULL,
    catalog_number VARCHAR2(10) NOT NULL,
    stamp_detail_link VARCHAR2(200) NOT NULL,
    CONSTRAINT pk_stamp_list PRIMARY KEY (stamp_list_id),
    CONSTRAINT catalog_number UNIQUE (catalog_number)
);
