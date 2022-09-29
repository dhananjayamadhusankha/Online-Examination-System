<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body style="background-image: url(a.jpg);">

		<div class="central-div">
			<form method='post' action="controller.jsp">
                             <input type="hidden" name="page" value="login"> 
				<table>
					<tr>
						<td colspan="2">
							<h2 style="text-align: center;">Login Form</h2>
						</td>
					</tr>
					<tr>
						<td>
							<label>User Name</label>
						</td>
						<td>
                                <input type="text" class="text" placeholder="User Name" name="username">
						</td>
					</tr>
					<tr>
						<td>
							<label>Password</label>
						</td>
						<td>
                                                    <input type="password" class="text" placeholder="Password" name="password">
						</td>
					</tr>
					<tr>
						<td>
							
						</td>
						<td>
                                                    <% 
                                                        if(request.getSession().getAttribute("userStatus")!=null){
                                                            System.out.println("its called");
                                                      	if(request.getSession().getAttribute("userStatus").equals("-1")){  
                                                          System.out.println("now inside");
                                                    %>
	                                                    <script>alert("username or password is incorrect");</script>
	                                                    <p style="color: rgba(255, 255, 51, 1);font-size: 17px">username or password is incorrect</p>
	                                                    <br>
                                                    <%
                                                      }
                                                        }
                                                      %>
                                                    
                                                    
                                                    <a href="">Forgot Password</a></td>
					</tr>
					<tr>
						<td>
						</td>
						<td style="text-align: center;">
							
							<input type="submit" value="Login" class="button">
							
						</td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>