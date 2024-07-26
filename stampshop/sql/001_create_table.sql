DROP TABLE country;
CREATE TABLE country (
    country_id NUMBER NOT NULL,
    country_name VARCHAR2(80) NOT NULL,
    country_code VARCHAR2(10),
    CONSTRAINT pk_country PRIMARY KEY (country_id),
    CONSTRAINT uk_country_name UNIQUE (country_name)
);
DROP TABLE stamp_catalog;
CREATE TABLE stamp_catalog (
    stamp_catalog_id  NUMBER NOT NULL,
    stamp_catalog_code VARCHAR2(5),
    stamp_catalog_name VARCHAR2(80),
    CONSTRAINT pk_stamp_catalog PRIMARY KEY (stamp_catalog_id),
    CONSTRAINT uk_stamp_catalog_code UNIQUE (stamp_catalog_code)
);

DROP TABLE stampuser.stamp_list;
CREATE TABLE stampuser.stamp_list (
    stamp_list_id NUMBER NOT NULL,
    catalog_number VARCHAR2(10) NOT NULL,
    stamp_detail_link VARCHAR2(200) NOT NULL,
    CONSTRAINT pk_stamp_list PRIMARY KEY (stamp_list_id),
    CONSTRAINT catalog_number UNIQUE (catalog_number)
);
