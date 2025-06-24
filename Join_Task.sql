CREATE DATABASE Joins_Task
USE Joins_Task

SELECT * FROM Servers
-- Table 1: Servers 
CREATE TABLE Servers ( 
server_id INT PRIMARY KEY, 
server_name VARCHAR(50), 
region VARCHAR(50) 
); 
INSERT INTO Servers VALUES 
(1, 'web-server-01', 'us-east'), 
(2, 'db-server-01', 'us-east'), 
(3, 'api-server-01', 'eu-west'), 
(4, 'cache-server-01', 'us-west'); 

SELECT * FROM Alerts
-- Table 2: Alerts 
CREATE TABLE Alerts ( 
alert_id INT PRIMARY KEY, 
server_id INT, 
alert_type VARCHAR(50), 
severity VARCHAR(20)
); 
 
INSERT INTO Alerts VALUES 
(101, 1, 'CPU Spike', 'High'), 
(102, 2, 'Disk Failure', 'Critical'), 
(103, 2, 'Memory Leak', 'Medium'), 
(104, 5, 'Network Latency', 'Low'); -- Invalid server_id (edge case) 

SELECT * FROM AI_Models
-- Table 3: AI Models 
CREATE TABLE AI_Models ( 
model_id INT PRIMARY KEY, 
model_name VARCHAR(50), 
use_case VARCHAR(50) 
); 
INSERT INTO AI_Models VALUES 
(201, 'AnomalyDetector-v2', 'Alert Prediction'), 
(202, 'ResourceForecaster', 'Capacity Planning'), 
(203, 'LogParser-NLP', 'Log Analysis'); 

SELECT * FROM ModelDeployments
-- Table 4: ModelDeployments 
CREATE TABLE ModelDeployments ( 
deployment_id INT PRIMARY KEY, 
server_id INT, 
model_id INT, 
deployed_on DATE 
); 
INSERT INTO ModelDeployments VALUES 
(301, 1, 201, '2025-06-01'), 
(302, 2, 201, '2025-06-03'), 
(303, 2, 202, '2025-06-10'), 
(304, 3, 203, '2025-06-12'); 

--INNER JOIN
SELECT a.alert_id, a.alert_type, a.severity, s.server_name
FROM Alerts a INNER JOIN Servers s 
ON a.server_id = s.server_id

-- LEFT JOIN
SELECT s.server_id, s.server_name, a.alert_id, a.alert_type, a.severity
FROM Servers s LEFT JOIN Alerts a 
ON s.server_id = a.server_id

-- RIGHT JOIN
SELECT s.server_id, s.server_name, a.alert_id, a.alert_type, a.severity
FROM Servers s RIGHT JOIN Alerts a 
ON s.server_id = a.server_id

-- FULL JOIN
SELECT s.server_id, s.server_name, a.alert_id, a.alert_type, a.severity
FROM Servers s FULL OUTER JOIN Alerts a 
ON s.server_id = a.server_id

-- CROSS JOIN
SELECT s.server_id, s.server_name, m.model_id, m.model_name
FROM Servers s CROSS JOIN AI_Models m