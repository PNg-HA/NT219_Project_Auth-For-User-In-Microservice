CREATE DATABASE svc;

GRANT ALL PRIVILEGES ON svc.* TO 'auth_user'@'localhost';
FLUSH PRIVILEGES;


USE svc;

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    due_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

