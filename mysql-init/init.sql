-- Tworzenie dodatkowych baz danych
CREATE DATABASE IF NOT EXISTS resume;
CREATE DATABASE IF NOT EXISTS storytime;

-- Tworzenie pierwszego użytkownika
CREATE USER 'user_resume'@'%' IDENTIFIED BY 'Koczkodan1972!*';
GRANT ALL PRIVILEGES ON resume.* TO 'user_resume'@'%';

-- Tworzenie drugiego użytkownika
CREATE USER 'user_storytime'@'%' IDENTIFIED BY 'Koczkodan1972!*';
GRANT ALL PRIVILEGES ON storytime.* TO 'user_storytime'@'%';

-- Opcjonalnie: odświeżanie uprawnień
FLUSH PRIVILEGES;
