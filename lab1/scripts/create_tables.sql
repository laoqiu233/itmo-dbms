CREATE TABLE genders (
    id serial PRIMARY KEY,
    name TEXT,
    femeninity_masculinity NUMERIC,
    sexual_orientation NUMERIC
);

CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    eye_color TEXT,
    gender_id INTEGER REFERENCES genders(id)
);

CREATE TABLE states (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT, 
    is_good BOOLEAN
);

CREATE TABLE character_states (
    id SERIAL PRIMARY KEY,
    character_id INTEGER REFERENCES characters(id),
    state_id INTEGER REFERENCES states(id),
    percentage NUMERIC,
    UNIQUE (character_id, state_id)
);

CREATE TABLE personalities (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT
);

CREATE TABLE character_personalities (
    character_id INTEGER REFERENCES characters(id),
    personality_id INTEGER REFERENCES personalities(id),
    PRIMARY KEY (character_id, personality_id)
);

CREATE TABLE professions (
    id SERIAL PRIMARY KEY,
    name TEXT,
    job_description TEXT,
    requirements TEXT
);

CREATE TABLE character_professions (
    character_id INTEGER REFERENCES characters(id),
    profession_id INTEGER REFERENCES professions(id),
    probability NUMERIC,
    PRIMARY KEY (character_id, profession_id)
);

CREATE TABLE actions (
    id SERIAL PRIMARY KEY,
    actor_id INTEGER REFERENCES characters(id),
    character_state_observed INTEGER REFERENCES character_states(id)
);
