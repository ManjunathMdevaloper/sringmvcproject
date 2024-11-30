<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update page</title>
<style type="text/css">
.form-container {
	background-color: #ffffff;
	padding: 20px 30px;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.6);
	width: 100%;
	max-width: 400px;
	margin: auto;
	margin-top: 10vh;
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
	text-align: left;
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

a {
	text-decoration: none;
	color: #ffffff;
}
.addedu{
	width: 10%;
	margin:10px auto;
}
</style>
</head>
<body>

	<div class="form-container">
		<h2>Update</h2>
		<form action="update" method="post">
			<div class="form-group">
				<label for="name">Id</label> 
				<input type="text" id="name" name="id"
					placeholder="Enter your name" required value="${std.getId() }"
					readonly="readonly"> <label for="name">Name</label> <input
					type="text" id="name" name="name" placeholder="Enter your name"
					required value="${std.getName() }">
			</div>
			<div class="form-group">
				<label for="rollno">Roll No</label> <input type="text" id="rollno"
					name="rollno" placeholder="Enter your roll number" required
					value="${std.getRollNo() }">
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" id="email"
					name="email" placeholder="Enter your email" required
					value="${std.getEmail() }">
			</div>
			<div class="form-group">
				<label for="phone">Phone</label> <input type="tel" id="phone"
					name="phone" placeholder="Enter your phone number" required
					value="${std.getPhone() }">
			</div>
			<div class="form-group">
				<button type="submit">Submit</button>
			</div>
		</form>
	</div>
	
	<div class="form-group addedu">
				<button><a href="addedu?id=${std.getId() }">Add Education</a></button>
			</div>
	<div class="table-container">
		<table>
			<thead>
				<tr>
					<!--  <th>ID</th>-->
					<th>CLG/University Name</th>
					<th>YOP</th>
					<th>Degree</th>
					<th>Department</th>
					<th>Heighest Qualification</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items="${el }">
					<tr>
						<!--  <td>${s.getId() }</td>-->
						<td>${s.getClgName() }</td>
						<td>${s.getYop() }</td>
						<td>${s.getDegree() }</td>
						<td>${s.getDepartment() }</td>
						<td>${s.getHighestQualification() }</td>
						<td>
							<button class="action-btn">
								<a href="deledu?id=${s.getId()}&sid=${std.getId()}">Delete</a>
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="form-group addedu">
				<button><a href="addadd?id=${std.getId() }">Add Address</a></button>
			</div>
	<div class="table-container">
		<table>
			<thead>
				<tr>
					<!--  <th>ID</th>-->
					<th>Door No</th>
					<th>Strret</th>
					<th>City</th>
					<th>State</th>
					<th>Country</th>
					<th>Pincode</th>
					<th>PhoneNo</th>
					<th>Adress Type</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${al }">
					<tr>
						<!--  <td>${e.getId() }</td>-->
						<td>${e.getDoorNo() }</td>
						<td>${e.getStreet() }</td>
						<td>${e.getCity() }</td>
						<td>${e.getState() }</td>
						<td>${e.getCountry() }</td>
						<td>${e.getPincode() }</td>
						<td>${e.getPhone() }</td>
						<td>${e.getAddresstype() }</td>
						<td>
							<button class="action-btn">
								<a href="deladd?id=${e.getId()  }&sid=${std.getId()}">Delete</a>
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>