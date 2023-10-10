CREATE TABLE genders (
    name TEXT PRIMARY KEY,
    femeninity_masculinity NUMERIC,
    sexual_orientation NUMERIC
);

CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    eye_color TEXT NOT NULL,
    gender_id INTEGER REFERENCES genders(name)
);

CREATE TABLE states (
    name TEXT PRIMARY KEY,
    description TEXT NOT NULL, 
    is_good BOOLEAN NOT NULL
);

CREATE TABLE character_states (
    character_id INTEGER REFERENCES characters(id),
    state_name TEXT REFERENCES states(name),
    percentage NUMERIC NOT NULL,
    PRIMARY KEY (character_id, state_id)
);

CREATE TABLE personalities (
    name TEXT PRIMARY KEY,
    description TEXT
);

CREATE TABLE character_personalities (
    character_id INTEGER REFERENCES characters(id),
    personality_id TEXT REFERENCES personalities(name),
    PRIMARY KEY (character_id, personality_id)
);

CREATE TABLE professions (
    name TEXT PRIMARY KEY,
    job_description TEXT,
    requirements TEXT
);

CREATE TABLE character_professions (
    character_id INTEGER REFERENCES characters(id),
    profession_name TEXT REFERENCES professions(name),
    probability NUMERIC,
    PRIMARY KEY (character_id, profession_name)
);

CREATE TABLE actions (
    id SERIAL PRIMARY KEY,
    actor_id INTEGER REFERENCES characters(id),
    character_id INTEGER NOT NULL,
    state_name TEXT NOT NULL,
    FOREIGN KEY (character_id, state_name) REFERENCES character_states(character_id, state_name)
);
