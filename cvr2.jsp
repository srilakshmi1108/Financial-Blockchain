
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
            String amount=request.getParameter("amount");
            String namount=request.getParameter("namount");
            String finance=request.getParameter("finance");
            String fdata=request.getParameter("fdata");
            String username=session.getAttribute("username").toString();
           

// Add a block with pdata
bcdemo demo = new bcdemo();

// Generate hash for the same data
String bckey = demo.getHashForData(amount);
String bckey1 = demo.getHashForData(namount);
// Output the hash

		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into contractor_report(did,fdata,amount,bckey,username,namount,nkey,person) values(?,?,?,?,?,?,?,?)");
        pst2.setString(1,did);
	pst2.setString(2,fdata);
        pst2.setString(3,namount); 
        pst2.setString(4,bckey1);
        pst2.setString(5,username); 
        pst2.setString(6,"pending");
         pst2.setString(7,"pending");
         pst2.setString(8,"pending");
       
      
        
	 pst2.executeUpdate();
        
        PreparedStatement pst3=co.prepareStatement("update finance_data set namount='"+amount+"',nkey='"+bckey+"',person='"+username+"' where did='"+did+"' ");
      int i= pst3.executeUpdate();
      if(i>0){
       response.sendRedirect("cvr.jsp?m1=registration_success"); 
      }
      else{
          response.sendRedirect("cvr.jsp?m2=registration_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>

