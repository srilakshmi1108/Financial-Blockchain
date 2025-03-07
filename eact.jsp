
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    try{
       
    Connection co = null;
    co = databasecon.getconnection();
    Statement st = co.createStatement();
    ResultSet rs = st.executeQuery("select * from engineer where username= '"+username+"' and password='"+password+"' ");
    
    if(rs.next())
    {
        
       
        
         String email = rs.getString("email");
         session.setAttribute("email",email);
         session.setAttribute("username",username);
          response.sendRedirect("ehome.jsp?m1=send_success");
         
    }
    
       
      
    
    else 
    {
    response.sendRedirect("eng.jsp?m2=Login_Faild");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in userl ogact"+e.getMessage());
    }
%>
