
CREATE TABLE person_logging (
  person_logging_id SERIAL NOT NULL,
  person_id INTEGER NOT NULL,
  login_name VARCHAR(32),
  password CHAR(48),
  title VARCHAR(32),
  gender BOOL,
  first_name VARCHAR(64),
  middle_name VARCHAR(64),
  last_name VARCHAR(64),
  public_name VARCHAR(64),
  nickname VARCHAR(64),
  address VARCHAR(256),
  street VARCHAR(64),
  street_postcode VARCHAR(10),
  po_box VARCHAR(10),
  po_box_postcode VARCHAR(10),
  city VARCHAR(64),
  country_id INTEGER,
  email_contact VARCHAR(64),
  iban VARCHAR(128),
  bic VARCHAR(32),
  bank_name VARCHAR(128),
  account_owner VARCHAR(128),
  gpg_key TEXT,
  preferences TEXT,
  f_conflict BOOL,
  f_deleted BOOL,
  f_spam BOOL,
  last_login TIMESTAMP WITH TIME ZONE,
  last_modified TIMESTAMP WITH TIME ZONE,
  PRIMARY KEY (person_logging_id)
) WITHOUT OIDS;

CREATE TABLE conference_person_logging (
  conference_person_logging_id SERIAL,
  conference_person_id INTEGER NOT NULL,
  conference_id INTEGER NOT NULL,
  person_id INTEGER NOT NULL,
  abstract TEXT,
  description TEXT,
  remark TEXT,
  email_public VARCHAR(64),
  last_modified TIMESTAMP WITH TIME ZONE,
  PRIMARY KEY (conference_person_logging_id)
) WITHOUT OIDS;

CREATE TABLE event_logging (
  event_logging_id SERIAL NOT NULL,
  event_id INTEGER NOT NULL,
  conference_id INTEGER NOT NULL,
  tag VARCHAR(256),
  title VARCHAR(128) NOT NULL,
  subtitle VARCHAR(256),
  conference_track_id INTEGER,
  team_id INTEGER,
  event_type_id INTEGER,
  duration INTERVAL NOT NULL,
  event_origin_id INTEGER NOT NULL,
  event_state_id INTEGER NOT NULL,
  event_state_progress_id INTEGER NOT NULL,
  language_id INTEGER,
  room_id INTEGER,
  day SMALLINT,
  start_time INTERVAL,
  abstract TEXT,
  description TEXT,
  resources TEXT,
  f_public BOOL,
  f_paper BOOL,
  f_slides BOOL,
  f_conflict BOOL,
  f_deleted BOOL,
  f_unmoderated BOOL,
  remark TEXT,
  last_modified TIMESTAMP WITH TIME ZONE,
  PRIMARY KEY (event_logging_id)
) WITHOUT OIDS;

CREATE TABLE person_image_logging (
  person_image_logging_id SERIAL NOT NULL,
  person_id INTEGER NOT NULL,
  mime_type_id INTEGER NOT NULL,
  f_public BOOL,
  image BYTEA NOT NULL,
  last_modified TIMESTAMP WITH TIME ZONE,
  PRIMARY KEY (person_image_logging_id)
) WITHOUT OIDS;

CREATE TABLE event_image_logging (
  event_image_logging_id SERIAL NOT NULL,
  event_id INTEGER NOT NULL,
  mime_type_id INTEGER NOT NULL,
  image BYTEA NOT NULL,
  last_modified TIMESTAMP WITH TIME ZONE,
  PRIMARY KEY (event_image_logging_id)
) WITHOUT OIDS;

CREATE TABLE conference_image_logging (
  conference_image_logging_id SERIAL NOT NULL,
  conference_id INTEGER NOT NULL,
  mime_type_id INTEGER NOT NULL,
  image BYTEA NOT NULL,
  last_modified TIMESTAMP WITH TIME ZONE,
  PRIMARY KEY (conference_image_logging_id)
) WITHOUT OIDS;

