
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
                    
        PreparedStatement pst2=co.prepareStatement("delete from hauthority where username='"+username+"' and email='"+email+"'");
       
      
        
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("aa.jsp?m1=registration_success"); 
      }
      else{
          response.sendRedirect("aa.jsp?m2=registration_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

