<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Education Details</title>
<style type="text/css">
/* styles.css */
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background: #ffffff;
	padding: 20px 30px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	width: 100%;
}

h2 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
	color: #555;
	font-weight: bold;
}

input, select {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
	outline: none;
}

input:focus, select:focus {
	border-color: #007bff;
}

.submit-btn {
	display: block;
	width: 100%;
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.submit-btn:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>Education Details Enter</h2>
		<form action="addeducation?id=${id }" method="post">
			<div class="form-group">
				<label for="university">University/College</label> <input
					type="text" id="university" name="university"
					placeholder="Enter university/college name" required>
			</div>

			<div class="form-group">
				<label for="degree">Degree</label> <input type="text" id="degree"
					name="degree" placeholder="Enter your degree" required>
			</div>

			<div class="form-group">
				<label for="department">Department</label> <input type="text"
					id="department" name="department"
					placeholder="Enter your department" required>
			</div>

			<div class="form-group">
				<label for="highest-qualification">Is this your highest
					qualification?</label> <select id="highest-qualification"
					name="highest">
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
			</div>

			<div class="form-group">
				<label for="year-of-passout">Year of Passout</label> <input
					type="number" id="year-of-passout" name="yop"
					placeholder="Enter year of passout" min="1900" max="2100" required>
			</div>

			<button type="submit" class="submit-btn">Submit</button>
		</form>
	</div>
</body>
</html>