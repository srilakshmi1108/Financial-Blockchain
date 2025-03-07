
<%@page import="java.util.Random"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String username=request.getParameter("username");
            String email=request.getParameter("email");
            
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("delete from supervisor where username='"+username+"' and email='"+email+"'");
       
      
        
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("as.jsp?m1=delete_success"); 
      }
      else{
          response.sendRedirect("as.jsp?m2=failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

