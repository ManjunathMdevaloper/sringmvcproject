<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Students Here</title>
<style type="text/css">
/* Reset some default styles */
body {
	margin: 0;
	font-family: Arial, sans-serif;
}

/* Styling the nav bar */
nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #2c3e50; /* Dark blue/gray background */
	padding: 10px 20px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
}

/* Logo container styling */
nav img {
	width: 50px; /* Logo size */
	height: auto;
}

/* Styling the navigation links */
nav ul {
	display: flex;
	list-style: none;
	margin: 0;
	padding: 0;
}

nav ul li {
	margin: 0 15px; /* Spacing between links */
}

nav ul li a {
	text-decoration: none; /* Remove underline */
	font-size: 16px; /* Professional font size */
	font-weight: 500; /* Semi-bold text */
	color: #ecf0f1; /* Light color for links */
	cursor: pointer;
	transition: color 0.3s ease; /* Smooth transition */
}

nav ul li:hover {
	color: #1abc9c;
	cursor: pointer;
}

.form-container {
	background-color: #ffffff;
	padding: 20px 30px;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.6);
	width: 100%;
	max-width: 400px;
	margin: auto;
	margin-top: 10px;
}

.form-container h2 {
	margin-bottom: 20px;
	font-size: 24px;
	color: #2c3e50;
	text-align: center;
}

/* Form field styling */
.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-size: 14px;
	font-weight: bold;
	color: #34495e;
	margin-bottom: 5px;
}

.form-group input {
	width: 100%;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #bdc3c7;
	border-radius: 5px;
	outline: none;
	transition: border-color 0.3s;
}

.form-group input:focus {
	border-color: #1abc9c; /* Focus color */
}

/* Submit button styling */
.form-group button {
	width: 100%;
	background-color: #1abc9c;
	color: white;
	padding: 10px;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.form-group button:hover {
	background-color: #16a085;
}
</style>
</head>
</head>
<body>
	<nav>
		<div>
			<img alt="Logo"
				src="https://cdn.pixabay.com/photo/2017/01/31/23/42/animal-2028258_1280.png">
		</div>
		<div>
			<ul>
				<li><a href="home">Home</a></li>
				<li><a href="view">View All Students</a></li>
				<li><a href="add">Add Student</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
	</nav>
	<div class="form-container">
		<h2>Student Registration</h2>
		<form action="add" method="post">
			<div class="form-group">
				<label for="name">Name</label> <input type="text" id="name"
					name="name" placeholder="Enter your name" required>
			</div>
			<div class="form-group">
				<label for="rollno">Roll No</label> <input type="text" id="rollno"
					name="rollno" placeholder="Enter your roll number" required>
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" id="email"
					name="email" placeholder="Enter your email" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone</label> <input type="tel" id="phone"
					name="phone" placeholder="Enter your phone number" required>
			</div>
			<div class="form-group">
				<button type="submit">Submit</button>
			</div>
		</form>
	</div>
	
</body>
</html>