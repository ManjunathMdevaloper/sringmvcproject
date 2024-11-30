<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .login-container {
      background-color: #ffffff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      width: 300px;
      text-align: center;
    }
    .login-container h1 {
      font-size: 24px;
      margin-bottom: 20px;
      color: #333333;
    }
    .form-group {
      margin-bottom: 15px;
      text-align: left;
    }
    .form-group label {
      display: block;
      font-size: 14px;
      margin-bottom: 5px;
      color: #555555;
    }
    .form-group input {
      width: 100%;
      padding: 10px;
      font-size: 14px;
      border: 1px solid #cccccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    .form-group input:focus {
      border-color: #007bff;
      outline: none;
    }
    .login-btn {
      width: 100%;
      padding: 10px;
      background-color: #007bff;
      color: #ffffff;
      border: none;
      border-radius: 4px;
      font-size: 16px;
      cursor: pointer;
    }
    .login-btn:hover {
      background-color: #0056b3;
    }
    .footer {
      margin-top: 15px;
      font-size: 12px;
      color: #777777;
    }
    .footer a {
      color: #007bff;
      text-decoration: none;
    }
    .footer a:hover {
      text-decoration: underline;
    }
</style>
</head>
<body>
		<div class="login-container">
    <h1>Student Login</h1>
    <form action="login" method="post">
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
      </div>
      <button type="submit" class="login-btn">Login</button>
    </form>
    <div class="footer">
      <p>Don't have an account? <a href="/register">Sign up</a></p>
    </div>
  </div>
</body>
</body>
</html>