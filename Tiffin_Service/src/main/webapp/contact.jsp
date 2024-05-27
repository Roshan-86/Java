<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="cc.css">
</head>
<body>
    <header>
        <h1>Tiffin Services</h1>
        <nav>
            <ul>
                <li><a href="Index.html">Home</a></li>
                <li><a href="menu.jsp">Menu</a></li>
                <li><a href="logout.jsp">LogOut</a></li>
            </ul>
        </nav>
    </header>
    <section class="contact-form">
        <h3>Contact Us</h3>
        <form action="contact2.jsp" method="post">
            <div>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div>
                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>
            </div>
            <button type="submit">Submit</button>
        </form>
       
    </section>
    <footer>
        <p>Tiffin Services provide by Roshan and Sachin.</p>
    </footer>
</body>
</html>
