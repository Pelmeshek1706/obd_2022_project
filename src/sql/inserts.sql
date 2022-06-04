USE mydb;

INSERT INTO currency (currency_name) VALUES ('Hryvnya'), ('Zloty'), ('Pound sterling'), ('United States Dollar');

INSERT INTO countries (country_name, country_pres, country_description, last_update, population, currency_ID) VALUES
	('Ukraine', 'Volodymyr Zelensky', 'Ukraine is a country in Eastern Europe. It is the second largest country in Europe after Russia, which borders it to the east and north-east.',
	'2022-05-30', 44130000, 1),
    ('Poland', 'Andrzej Duda', 'Poland, officially the Republic of Poland, is a country in Central Europe. It is divided into 16 administrative provinces called voivodeships, covering an area of 312,696 km². Poland has a population of over 38 million and is the fifth-most populous member state of the European Union.',
	'2022-05-30', 37950000, 2),
    ('United Kingdom', 'Queen Elizabeth II', 'The United Kingdom, made up of England, Scotland, Wales and Northern Ireland, is an island nation in northwestern Europe. England – birthplace of Shakespeare and The Beatles – is home to the capital, London, a globally influential centre of finance and culture. England is also site of Neolithic Stonehenge, Bath’s Roman spa and centuries-old universities at Oxford and Cambridge.',
	'2022-05-30', 67220000, 3),
    ('United States', 'Joe Biden', 'The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles\' Hollywood is famed for filmmaking.',
	'2022-05-30', 329500000, 4);

INSERT INTO neighbours (neighbour_name, neighbour_id) VALUE
	('Belarus', 1),
    ('Poland', 1),
    ('Slovakia', 1),
    ('Hungary', 1),
    ('Romania', 1),
    ('Moldova', 1),
    ('ruzzia', 1);
    
INSERT INTO neighbours (neighbour_name, neighbour_id) VALUE
	('Belarus', 2),
    ('Ukraine', 2),
    ('Slovakia', 2),
    ('Czech Republic', 2),
    ('Germany', 2),
    ('Lithuania', 2),
    ('ruzzia', 2);
    
INSERT INTO neighbours (neighbour_name, neighbour_id) VALUE
	('Ireland', 3),
    ('Spain', 3),
    ('Cyprus', 3);
    
INSERT INTO neighbours (neighbour_name, neighbour_id) VALUE
	('Mexico', 4),
    ('Canada', 4),
    ('Cuba', 4);

INSERT INTO yellowPress (country_ID, yellow_press_URL) VALUE
	(1, 'https://www.pravda.com.ua/'),
    (1, 'https://tsn.ua/'),
    (1, 'https://censor.net/');

INSERT INTO yellowPress (country_ID, yellow_press_URL) VALUE
	(2, 'https://www.polskieradio.pl/'),
    (2, 'https://wyborcza.pl/'),
    (2, 'https://www.gazetapolska.pl/');
    
INSERT INTO yellowPress (country_ID, yellow_press_URL) VALUE
	(3, 'https://www.dailymail.co.uk/'),
    (3, 'https://www.thesun.co.uk/'),
    (3, 'https://www.theguardian.com/');

INSERT INTO yellowPress (country_ID, yellow_press_URL) VALUE
	(4, 'https://www.usatoday.com/'),
    (4, 'https://www.washingtonpost.com/'),
    (4, 'https://www.washingtontimes.com/');

SELECT * FROM massMedia;
INSERT INTO massMedia (name_media) VALUE ('Twitter'), ('Telegram'), ('Youtube'), ('Meta');

SELECT source_URL FROM offCountrySources WHERE mass_media_ID=(SELECT ID FROM massMedia WHERE name_media='Meta');
INSERT INTO offCountrySources (source_URL, mass_media_ID, country_ID) VALUE 
	('https://www.youtube.com/c/ukrainernet', 3, 1),
    ('https://twitter.com/Ukraine', 1, 1),
    ('https://www.facebook.com/UkraineUA.MFA', 4, 1),
    ('https://t.me/V_Zelenskiy_official', 2, 1);

INSERT INTO offCountrySources (source_URL, mass_media_ID, country_ID) VALUE 
    ('https://twitter.com/polandmoi?lang=en', 1, 2),
    ('https://www.facebook.com/poland', 4, 2);

INSERT INTO offCountrySources (source_URL, mass_media_ID, country_ID) VALUE 
    ('https://twitter.com/GOVUK', 1, 3),
    ('https://www.facebook.com/UKgovernment', 4, 3);

INSERT INTO offCountrySources (source_URL, mass_media_ID, country_ID) VALUE 
    ('https://twitter.com/USAGov', 1, 4),
    ('https://www.facebook.com/VisitTheUSA/', 4, 4);

INSERT INTO userSex (user_sex) VALUES ('Male'), ('Female'), ('Other');

INSERT INTO userRole (user_role) VALUE ('User'), ('Admin');

USE test_obd_db;
INSERT INTO user (user_login, user_password, user_first_name, user_last_name, user_age, user_role_id, user_sex_id, user_email, user_last_update) VALUE 
	('bjohnsonuk', '209addf35a0c3e9e41e44afcad5322aa', 'Boris', 'Johnson', 57, 1, 1, 'borisjohnson@gov.uk', '2022-05-30'),
    ('joebiden', '2f14c664d635a35f235648ddb524c315', 'Joe', 'Biden', 79, 1, 1, 'joebiden@gov.us', '2022-05-30'),
    ('admin', '726b3e811142bed8d912ce1ced0d611a', 'Admin', 'Adminovich', 420, 2, 3, 'admiin@poshta.net', '2022-05-30'),
    ('destroyer228', '1a1cfc1691ff4d13b6e464873108f762', 'Vasya', 'Pyatochkin', 18, 1, 1, 'destroyer228@ukr.net', '2022-05-30');
    
USE mydb;

INSERT INTO comment (comment_author, comment_text) VALUE
	(1, 'Microsoft bought Skype for 8,5 billion!.. what a bunch of idiots! I downloaded it for free!'),
    (1, 'Why go to college? There\'s Google.'),
    (2, 'The human body was designed by a civil engineer. Who else would run a toxic waste pipeline through a recreational area?'),
    (3, 'A good lawyer knows the law; a clever one takes the judge to lunch.'),
    (4, 'Some people come into our lives and leave footprints on our hearts, while others come into our lives and make us wanna leave footprints on their face.');
    
INSERT INTO filters (filter_name, filter_count) VALUE
	('Only Youtube', 5),
    ('Only Meta', 18),
    ('Only Twitter', 32),
    ('Only yellow press', 2);

INSERT INTO statistic (user_ID, queries_count, filter_ID, country_ID, user_count) VALUE
	(1, 232, 2, 1, 3233),
    (2, 21, 3, 2, 3232),
    (3, 345, 3, 2, 1212),
    (4, 2346, 4, 4, 3),
    (4, 2, 1, 3, 33);