CREATE TABLE video (
int NOT NULL UNIQUE,
video_title varchar,
length_of_video_mins float,
url varchar
);


CREATE TABLE reviewers (
ID int NOT NULL UNIQUE,
users_name varchar,
review varchar,
rating int NULL CHECK (rating >= 0 AND rating <= 5)
);

INSERT INTO video (ID, video_title, length_of_video_mins , url)
VALUES ('1', 'Shinigami', '3.19', 'https://www.youtube.com/watch?v=pzPElFdxMCM');


INSERT INTO video (ID, video_title, length_of_video_mins , url)
VALUES ('2', 'Player Of Games', '6.42', 'https://www.youtube.com/watch?v=ADHFwabVJec');


INSERT INTO video (ID, video_title, length_of_video_mins , url)
VALUES ('3', 'Oblivion', '4.11', 'https://www.youtube.com/watch?v=JtH68PJIQLE');


INSERT INTO reviewers (ID, users_name, review, rating)
VALUES ('3', 'Sharon', 'Super cool!', '4');

INSERT INTO reviewers (ID, users_name, review, rating)
VALUES ('2', 'Timmy', 'Amazing song!', '5');


SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

Select
video.video_title,
reviewers.users_name,
reviewers.review
from video 
INNER JOIN reviewers  
	ON reviewers.id = video.id
ORDER BY
	reviewers.users_name;

