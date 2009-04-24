
CREATE TABLE base.conference_person_link (
  conference_person_link_id SERIAL NOT NULL,
  conference_person_id INTEGER NOT NULL,
  url TEXT NOT NULL,
  title TEXT,
  rank INTEGER
);

CREATE TABLE conference_person_link (
  FOREIGN KEY (conference_person_id) REFERENCES conference_person (conference_person_id) ON UPDATE CASCADE ON DELETE CASCADE,
  PRIMARY KEY (conference_person_link_id)
) INHERITS( base.conference_person_link );

CREATE TABLE log.conference_person_link (
) INHERITS( base.logging, base.conference_person_link );

CREATE INDEX log.conference_person_link_conference_person_link_id_idx ON log.conference_person_link( conference_person_link_id );
CREATE INDEX log.conference_person_link_conference_person_id_idx ON log.conference_person_link( conference_person_id );
CREATE INDEX log.conference_person_link_log_transaction_id_idx ON log.conference_person_link( log_transaction_id );

