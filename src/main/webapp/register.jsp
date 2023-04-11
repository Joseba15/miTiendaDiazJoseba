<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<div class="container">
		<div class="starter-template" align="center">
            <h4>Sing Up</h4>
            <form style="width: 38rem;"  action="registerExec.jsp" method="post">
				<div class="form-group">
					<label>Username:</label>
					<input type="text" name="username" class="form-control"  required>
				</div>
				<div class="form-group">
					<label>Password :</label>
					<input type="password" name="password" class="form-control" required>
				</div>
				<div class="form-group">
					<label>Name :</label>
					<input type="text" name="name" class="form-control" required >
				</div>
				<div class="form-group">
					<label>Last Name :</label>
					<input type="text" name="lastname" class="form-control" required>
				</div>
				<div class="form-group">
					<label>Birthday :</label>
					<input type="date" name="birthday" class="form-control">
				</div>
				<div class="form-group">
					<label>Gender :</label>
						Hombre<input type="radio"  required name="gender" id="gender" value="Hombre" checked> 
		            	Mujer <input type="radio"  required name="gender" id="gender" value="Mujer"> 
				</div>
				<button type="submit" class="btn btn-primary"  name="confirm">Confirm</button>
				<a href="index.jsp"><button name="back" class="btn btn-primary" type="button">Back</button></a>
			</form>
        </div>
      </div>
</body>
</html>