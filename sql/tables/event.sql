
CREATE TABLE master.event(
  event_id INTEGER NOT NULL,
  conference_id INTEGER NOT NULL,
  tag TEXT,
  title TEXT NOT NULL,
  subtitle TEXT,
  conference_track TEXT,
  conference_team TEXT,
  event_type TEXT NOT NULL,
  duration INTERVAL NOT NULL,
  event_origin TEXT NOT NULL,
  event_state TEXT NOT NULL,
  event_state_progress TEXT NOT NULL,
  language TEXT NOT NULL,
  room TEXT NOT NULL,
  day SMALLINT,
  start_time INTERVAL,
  abstract TEXT,
  description TEXT,
  resources TEXT,
  public BOOL NOT NULL DEFAULT FALSE,
  paper BOOL,
  slides BOOL,
  remark TEXT,
  submission_notes TEXT
);

-- this is the real event table
CREATE TABLE event(
  PRIMARY KEY(event_id),
  FOREIGN KEY(conference_id) REFERENCES conference(conference_id) ON UPDATE CASCADE,
  FOREIGN KEY(conference_id, conference_track) REFERENCES conference_track(conference_id, conference_track) ON UPDATE CASCADE,
  FOREIGN KEY(conference_id, conference_team) REFERENCES conference_team(conference_id, conference_team) ON UPDATE CASCADE,
  FOREIGN KEY(event_type) REFERENCES event_type(event_type) ON UPDATE CASCADE,
  FOREIGN KEY(event_origin) REFERENCES event_origin(event_origin) ON UPDATE CASCADE,
  FOREIGN KEY(event_state) REFERENCES event_state(event_state) ON UPDATE CASCADE,
  FOREIGN KEY(event_state, event_state_progress) REFERENCES event_state_progress(event_state, event_state_progress) ON UPDATE CASCADE,
  FOREIGN KEY(language) REFERENCES language(language) ON UPDATE CASCADE,
  FOREIGN KEY(conference_id, room) REFERENCES room(conference_id,room) ON UPDATE CASCADE
) INHERITS(master.event);

CREATE SEQUENCE event_id_sequence;
ALTER TABLE event ALTER COLUMN event_id SET DEFAULT nextval('event_id_sequence');

CREATE TABLE logging.event(
) INHERITS(master.event);

