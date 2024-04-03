create database financialservices_db;

CREATE TABLE userdata (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    username VARCHAR(255),
    password VARCHAR(255),
    phone VARCHAR(20),
    PAN VARCHAR(20),
    stock1 VARCHAR(255),
    stock2 VARCHAR(255),
    stock3 VARCHAR(255),
    mutual_fund VARCHAR(255),
    property VARCHAR(255),
    insurance VARCHAR(255)
);


INSERT INTO userdata (firstname, lastname, username, password, phone, PAN, stock1, stock2, stock3, mutual_fund, property, insurance) 
VALUES 
    ('Anindya', 'Zarbade', 'azthegrt', 'anindya123', '+1234567890', 'ABCDE1234F', 'Apple Inc.', 'Microsoft Corporation', 'Tesla Inc.', 'Vanguard Total Stock Market Index Fund', '123 Main St, New York', 'Life Insurance'),
    ('Rhea', 'Patel', 'rheapatel', 'rhea123', '+1987654321', 'FGHIJ5678K', 'Amazon.com Inc.', 'Alphabet Inc.', 'Facebook Inc.', 'Fidelity Total Market Index Fund', '456 Elm St, LA', 'Health Insurance'),
    ('Himanshu', 'Rotey', 'himanshurotey', 'himanshu123', '+1122334455', 'LMNOP9012G', 'Netflix Inc.', 'Disney', 'Warner Bros.', 'T. Rowe Price Blue Chip Growth Fund', '789 Oak St, London', 'Home Insurance'),
    ('Emily', 'Brown', 'emilybrown', 'password4', '+1555666777', 'QRSTU3456H', 'Johnson & Johnson', 'Pfizer Inc.', 'Merck & Co. Inc.', 'Vanguard Total Bond Market II Index Fund', '101 Pine St, Hamletville', 'Car Insurance'),
    ('Michael', 'Jones', 'michaeljones', 'password5', '+1443322110', 'VWXYZ6789L', 'Visa Inc.', 'Mastercard Inc.', 'American Express Company', 'Fidelity International Index Fund', '202 Cedar St, Forestville', 'Travel Insurance'),
    ('Sarah', 'Miller', 'sarahmiller', 'password6', '+1789456123', 'KLMNO1234P', 'Walmart Inc.', 'Target Corporation', 'Costco Wholesale Corporation', 'Vanguard Total International Stock Index Fund', '303 Maple St, Riverside', 'Pet Insurance'),
    ('David', 'Wilson', 'davidwilson', 'password7', '+1567890123', 'QRSJK4567S', 'Boeing Co.', 'Airbus SE', 'Lockheed Martin Corporation', 'Fidelity Global ex U.S. Index Fund', '404 Birch St, Lakeside', 'Rental Insurance'),
    ('Olivia', 'Taylor', 'oliviataylor', 'password8', '+1678901234', 'TUVWX8901M', 'AT&T Inc.', 'Verizon Communications Inc.', 'T-Mobile US Inc.', 'Vanguard Total World Stock Index Fund', '505 Walnut St, Mountainside', 'Business Insurance'),
    ('Daniel', 'Anderson', 'danielanderson', 'password9', '+1876543210', 'XYZAB6789N', 'Coca-Cola Co.', 'PepsiCo Inc.', 'Keurig Dr Pepper Inc.', 'Fidelity Small Cap Index Fund', '606 Cherry St, Hillcrest', 'Renters Insurance'),
    ('Sophia', 'Martinez', 'sophiamartinez', 'password10', '+1998877665', 'ABCDR2345O', 'Ford Motor Company', 'General Motors Company', 'Toyota Motor Corporation', 'Vanguard Total International Bond Index Fund', '707 Oakwood St, Brookside', 'Life Insurance');

