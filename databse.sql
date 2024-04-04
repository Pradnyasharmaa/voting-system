alter user 'root'@'localhost' identified with mysql_native_password by '123456789';
CREATE DATABASE voter_db;

USE voter_db;

CREATE TABLE voters (
    voter_id VARCHAR(36) PRIMARY KEY NOT NULL,
    role ENUM('admin', 'user') NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO voters (voter_id, role, password) VALUES 
('1a2b3c4d5e6f7g8h9i0j1k2l3m4n5o6', 'admin', 'admin_password123voters'),
('a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5', 'user', 'user_password987'),
('2b3c4d5e6f7g8h9i0j1k2l3m4n5o7', 'admin', 'admin123'),
('b1c2d3e4f5g6h7i8j9k0l1m2n3o6', 'user', 'user987'),
('3c4d5e6f7g8h9i0j1k2l3m4n5o8', 'admin', 'passadmin'),
('c1d2e3f4g5h6i7j8k9l0m1n2o7', 'user', 'password123'),
('4d5e6f7g8h9i0j1k2l3m4n5o9', 'admin', 'adminadmin'),
('d1e2f3g4h5i6j7k8l9m0n1o8', 'user', 'passuser');