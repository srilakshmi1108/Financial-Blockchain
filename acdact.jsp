
<%@page import="Efficient.bcdemo"%>
<%@page import="java.util.Random"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String did=request.getParameter("did");
            String fdata=request.getParameter("pdata");
            String amount=request.getParameter("amount");
            String username=session.getAttribute("username").toString();
           ;

bcdemo demo = new bcdemo();

// Generate hash for the same data
String bckey = demo.getHashForData(amount);

// Output the hash
System.out.println("Hash of the last block: " + bckey);
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into finance_data(did,fdata,amount,bckey,username,namount,nkey,person) values(?,?,?,?,?,?,?,?)");
        pst2.setString(1,did);
	pst2.setString(2,fdata);
        pst2.setString(3,amount); 
        pst2.setString(4,bckey); 
        pst2.setString(5,username);
        pst2.setString(6,"pending"); 
        pst2.setString(7,"pending"); 
        pst2.setString(8,"pending");
       
      
        
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("fad.jsp?m1=registration_success"); 
      }
      else{
          response.sendRedirect("fad.jsp?m2=registration_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

