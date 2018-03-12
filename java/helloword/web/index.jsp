<%-- 
    Document   : index
    Created on : Nov 24, 2017, 3:56:42 PM
    Author     : mindit201602
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr><th>Name</th><th>Salary</th></tr>
       
        <% try{
             Class.forName("com.mysql.jdbc.Driver");
 String url = "jdbc:mysql://localhost:3306/ved";
 String name = "root";
 String password = "mindit@123";        
      Connection conn = DriverManager.getConnection(url, name, password);
      PreparedStatement ps=conn.prepareStatement("select * from employee");
      ResultSet rs=ps.executeQuery();
      while(rs.next()){
               
            %>
            <tr><td><%= rs.getString("Emp_name")%></td>
                <td><%= rs.getString("salary")%></td></tr>
            </table>
            
            <% }
}catch(Exception e){
       out.print(e);
}
                %>
    </body>
</html>
