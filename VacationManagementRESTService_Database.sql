
-- Select the database
CREATE DATABASE IF NOT EXISTS office;
USE office;

-- ==========================================
-- 1. ROLES TABLE
-- ==========================================

CREATE TABLE IF NOT EXISTS roles (
    roleid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(100) NOT NULL
);

-- Insert the employee and supervisor roles
INSERT INTO roles (roleid, name, code)
VALUES
    (1, 'employee', 'employee123'),
    (2, 'supervisor', 'supervisor123')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    code = VALUES(code);


-- ==========================================
-- 2. USERS TABLE
-- ==========================================

CREATE TABLE IF NOT EXISTS users (
    userid INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    roleid INT NOT NULL,
    availablevacaydays INT NOT NULL DEFAULT 0,
    sickdays INT NOT NULL DEFAULT 0,

    CONSTRAINT FK_Users_Roles
        FOREIGN KEY (roleid)
        REFERENCES roles(roleid)
);


-- ==========================================
-- 3. VACATION REQUESTS TABLE
-- ==========================================

CREATE TABLE IF NOT EXISTS vacationrequests (
    VacationRequestId INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeId INT NOT NULL,
    Startdate DATE NOT NULL,
    Enddate DATE NOT NULL,
    Numvacaydays INT NOT NULL,
    Status VARCHAR(50) NOT NULL,
    Comment TEXT,

    CONSTRAINT FK_VacationRequests_Users
        FOREIGN KEY (EmployeeId)
        REFERENCES users(userid),

    CHECK (Status IN (
        'pending',
        'approved',
        'rejected',
        'withdrawn',
        'sick'
    )),

    CHECK (Startdate <= Enddate),
    CHECK (Numvacaydays > 0)
);


-- ==========================================
-- 4. VIEW TABLE STRUCTURES
-- ==========================================

DESCRIBE users;
DESCRIBE roles;
DESCRIBE vacationrequests;


-- ==========================================
-- 5. VIEW TABLE DATA
-- ==========================================

SELECT * FROM roles;
SELECT * FROM users;
SELECT * FROM vacationrequests;
