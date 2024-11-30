<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All</title>
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

nav ul a:hover {
	color: #1abc9c;
	cursor: pointer;
}
.table-container {
	width: 90%;
	max-width: 1000px;
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	margin: auto;
	margin-top: 20px;
}

/* Table styling */
table {
	width: 100%;
	border-collapse: collapse;
}

thead {
	background-color: #2c3e50;
	/* Dark blue/gray background for the header */
	color: #ffffff;
}

thead th {
	text-align: center;
	padding: 12px 15px;
	font-size: 14px;
	text-transform: uppercase;
}

tbody tr:nth-child(odd) {
	background-color: #f9f9f9; /* Alternate row color */
}

tbody tr:nth-child(even) {
	background-color: #ffffff;
}

tbody td {
	padding: 12px 15px;
	font-size: 14px;
	color: #34495e;
}
th,td{
	text-align: center;
}
tbody tr:hover {
	background-color: #f1f1f1; /* Row hover effect */
}

/* Action button styling */
.action-btn {
	padding: 5px 10px;
	font-size: 12px;
	background-color: #1abc9c;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.action-btn:hover {
	background-color: #16a085;
}
a{
	text-decoration: none;
	color: #ffffff;
	
}
</style>
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
				<li><a href="addStudent">Add Student</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
	</nav>
	 <div class="table-container">
		<table>
			<thead>
				<tr>
					<!--  <th>ID</th>-->
					<th>Name</th>
					<th>Roll No</th>
					<th>Email</th>
					<th>Phone</th>
					<!--  <th>Degree</th>-->
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items="${std }">
					<tr>
						<!--  <td>${s.getId() }</td>-->
						<td>${s.getName() }</td>
						<td>${s.getRollNo() }</td>
						<td>${s.getEmail() }</td>
						<td>${s.getPhone() }</td>
						<!--  <td>${s.getLoginTime() }</td>-->
						<td>
							<button class="action-btn"><a href="updatePage?id=${s.getId()  }">Update</a> </button>
							<button class="action-btn"><a href="del?id=${s.getId()  }">Delete</a></button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>