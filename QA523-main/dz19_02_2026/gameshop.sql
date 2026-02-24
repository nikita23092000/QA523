CREATE TABLE users(
    id integer PRIMARY KEY AUTOINCREMENT,
    nickname varchar(50) UNIQUE Not NULL,
    email varchar(100) UNIQUE NOT NULL,
    password varchar(255) NOT NULL,
    pegdate DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users(nickname, email, password) VALUES
('AlexGamer', 'alex@gameshop.com','qwerty123'),
('SuperNinja','ninja@gameshop.com', 'password456'),
('SpaceRacer', 'racer@gameshop.com', 'secret789');

SELECT * FROM users;