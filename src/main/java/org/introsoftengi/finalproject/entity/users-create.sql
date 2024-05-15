CREATE TABLE IF NOT EXISTS mysql.users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    userName varchar(100) NOT NULL,
    password varchar(100) NOT NULL,
    role varchar(100) NOT NULL,
    is_logged_in bool DEFAULT false
)