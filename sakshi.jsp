<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form >
  <div class="form-group">
    <label for="email">Enter Number:</label>
    <input type="text" class="form-control" name="num">
  </div>

  <div class="form-group">
    <label for="email">Enter Number:</label>
    <input type="text" class="form-control" name="num1">
  </div>

  <input name="submit" type="submit"  value="sub" type="submit" class="btn btn-default">
</form>
<div>
<%  
	if(request.getParameter("submit")!=null)
	{
		int n=Integer.parseInt(request.getParameter("num"));
		int n1=Integer.parseInt(request.getParameter("num1"));
		int lcm;
		System.out.print("hello");
		lcm = ((n > n1) ? n : n1);

        while(true)
        {
            if( lcm % n == 0 && lcm % n1 == 0 )
            {
             %>
             The LCM of <%=n %> and <%=n1 %> is =<%=lcm %>
              <%  break;
            }
            ++lcm;
        }
	}
%>


</div>
</body>
</html>