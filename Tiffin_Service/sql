 CREATE TABLE daily_meal_orders (
    ->   id INT AUTO_INCREMENT PRIMARY KEY,
    ->   name VARCHAR(255) NOT NULL,
    ->   email VARCHAR(255) NOT NULL,
    ->   phone VARCHAR(20) NOT NULL,
    ->   address VARCHAR(255) NOT NULL,
    ->   start_date DATE NOT NULL,
    ->   num_weeks INT NOT NULL,
    ->   meals TEXT NOT NULL
    -> );
    
    ///////////////////////////////////////////////////////////
     CREATE TABLE daily_meals (
    ->   meal_id INT PRIMARY KEY AUTO_INCREMENT,
    ->   meal_name VARCHAR(255) NOT NULL,
    ->   price DECIMAL(10, 2) NOT NULL
    -> );
    ////////////////////////////////////////////////////////
    mysql> select  * from  orders ;
+----+---------+---------------------+------------+-----------------+----------------+---------------+-------------+
| id | name    | email               | phone      | address         | meal_type      | meal_quantity | total_price |
+----+---------+---------------------+------------+-----------------+----------------+---------------+-------------+
|  1 | sachin  | Sacjin@123gmail.com | 7246782323 | chinchwad,pune  | Vegetarian     |             2 |       10.00 |
|  2 | sachin  | Sacjin@123gmail.com | 7246782323 | urserweqaye     | Vegetarian     |             3 |      240.00 |
|  3 | sanket  | sanket123@gmail.com | 7246782323 | chinchwad       | Non-Vegetarian |             2 |      300.00 |
|  4 | sachin  | Sacjin@123gmail.com | 7246782323 | pune            | Vegetarian     |             1 |       80.00 |
+----+---------+---------------------+------------+-----------------+----------------+---------------+-------------+
> desc orders ;
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| id            | int           | NO   | PRI | NULL    | auto_increment |
| name          | varchar(255)  | NO   |     | NULL    |                |
| email         | varchar(255)  | NO   |     | NULL    |                |
| phone         | varchar(255)  | NO   |     | NULL    |                |
| address       | varchar(255)  | NO   |     | NULL    |                |
| meal_type     | varchar(255)  | NO   |     | NULL    |                |
| meal_quantity | int           | NO   |     | NULL    |                |
| total_price   | decimal(10,2) | NO   |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+

///////////////////////////////////////////////////////////
+----------------------+---------------------+------------+
| email                | username            | password   |
+----------------------+---------------------+------------+
| jdsfjhegrge          | Sacjin@123gmail.com | eredd      |
| roshan@gmail.com     | Roshan              | roshang    |
| Sacjin@123gmail.com  | sachin              | sachin123  |
| gaurav7801@gmail.com | Gaurav              | gaushubh   |
| youraj@gmail.com     | Youraj              | youraj@123 |
+----------------------+---------------------+------------+
 desc  user;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| email    | varchar(20) | YES  |     | NULL    |       |
| username | varchar(20) | YES  |     | NULL    |       |
| password | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
/////////////////////////////////////////////////////////////////////////
 select  * from  daily_meals;
+---------+-------------+-------+
| meal_id | meal_name   | price |
+---------+-------------+-------+
|       1 | Masala Dosa | 80.00 |
|       2 | Palak       | 70.00 |
|       3 | Bhendi      | 70.00 |
|       4 | potato      | 75.00 |
|       5 | Bangon      | 75.00 |
|       6 | Flower      | 75.00 |
|       7 | Patta Kobi  | 75.00 |
|       8 | Dal Makhni  | 60.00 |
+---------+-------------+-------+
 desc daily_meals;
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| meal_id   | int           | NO   | PRI | NULL    | auto_increment |
| meal_name | varchar(255)  | NO   |     | NULL    |                |
| price     | decimal(10,2) | NO   |     | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+
/////////////////////////////////////////////////////////////////
CREATE TABLE payment (
id INT NOT NULL AUTO_INCREMENT,
card_number VARCHAR(16) NOT NULL,
expiration_date varchar(20) NOT NULL,
cvv VARCHAR(3) NOT NULL,
PRIMARY KEY (id)
);

