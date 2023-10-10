INSERT INTO genders (name, femeninity_masculinity, sexual_orientation)
VALUES
('male', 1, 0),
('female', 0, 1),
('attack helicopter', 0.5, 0.5);

INSERT INTO characters (first_name, last_name, eye_color, gender_id)
VALUES 
('Эд', 'Реджис', 'Blue', 1),
('She', 'Her', 'Purple', 2);

INSERT INTO states (name, description, is_good)
VALUES
('Напряженный', 'Чел напряжен', false),
('Не по себе', 'Челу не по себе', false);

INSERT INTO personalities (name, description)
VALUES
('Беспокойный', 'чел вообще не спокоен'),
('Нервный', 'чел нервничает');

INSERT INTO professions (name, job_description, requirements)
VALUES
('Мастер со стройки', 'строить дом', 'уметь строить дом'),
('Кто-то из администрации', 'админить', 'уменить админить');

INSERT INTO character_states (character_id, state_id)
VALUES
(1, 1),
(1, 2);

INSERT INTO character_personalities (character_id, personality_id)
VALUES
(1, 1),
(1, 2);

INSERT INTO character_professions (character_id, profession_id, probability)
VALUES
(1, 1, 0),
(1, 2, 0.9);

INSERT INTO actions (actor_id, character_state_observed)
VALUES
(2, 1),
(2, 1);