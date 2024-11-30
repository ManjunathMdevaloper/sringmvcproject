<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Adress Page</title>
<style type="text/css">
.form-container {
  width: 400px;
  background-color: white;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
  margin:20px auto;
}

/* Form Heading */
.form-container h2 {
  text-align: center;
  color: #333;
  margin-bottom: 20px;
}

/* Labels */
label {
  display: block;
  margin-bottom: 8px;
  font-weight: bold;
  color: #555;
}

/* Input Fields */
input, select {
  width: 100%;
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 14px;
}

/* Dropdown */
select {
  background-color: #fff;
}

/* Submit Button */
button {
  width: 100%;
  padding: 12px;
  background-color: #007bff;
  color: white;
  font-size: 16px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button:hover {
  background-color: #0056b3;
}

/* Form Focus Effects */
input:focus, select:focus {
  border-color: #007bff;
  outline: none;
  box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}
</style>
</head>
<body>
	<div class="form-container">
    <h2>Student Address Form</h2>
    <form action="saveadd?id=${id }" method="post">

      <!-- Address Fields -->
      <label for="doorNo">Door Number:</label>
      <input type="text" id="doorNo" name="doorNo" placeholder="Enter your door number" required>
      
      <label for="street">Street:</label>
      <input type="text" id="street" name="street" placeholder="Enter your street" required>
      
      <label for="city">City:</label>
      <input type="text" id="city" name="city" placeholder="Enter your city" required>
      
      <label for="state">State:</label>
      <input type="text" id="state" name="state" placeholder="Enter your state" required>
      
      <label for="country">Country:</label>
      <input type="text" id="country" name="country" placeholder="Enter your country" required>
      
      <label for="pincode">Pincode:</label>
      <input type="text" id="pincode" name="pincode" placeholder="Enter your pincode" required>
      
      <label for="phone">Phone:</label>
      <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
       <!-- Dropdown for Address Type -->
      <label for="address-type">Address Type:</label>
      <select id="address-type" name="addresstype" required>
        <option value="" disabled selected>Select Address Type</option>
        <option value="current">Current Address</option>
        <option value="permanent">Permanent Address</option>
      </select>
      
      <button type="submit">Submit</button>
    </form>
  </div>
</body>
</html>