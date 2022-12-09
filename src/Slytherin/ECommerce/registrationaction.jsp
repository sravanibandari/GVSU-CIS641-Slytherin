<%@ page import="java.sql.*,com.ecommerce.db.*"%>
<html>
<head>

<%
int id=0;
Connection ccc=DBConnection.get();
	Statement ss = ccc.createStatement();
		
	String sss = "select max(uid) from signup ";
	ResultSet r=ss.executeQuery(sss);
	if(r.next())
	{
		id=r.getInt(1);

		id++;
	}
	

%>

<% 


ResultSet res_set=null;

PreparedStatement pre_st=null;

	String name = request.getParameter("name");
		String lname = request.getParameter("lname");
	String pass_word = request.getParameter("pass_word");


	String email = request.getParameter("useremail");	
	String tele = request.getParameter("tele");
	String city = request.getParameter("city");
	String zip = request.getParameter("zip");
String addr = request.getParameter("addr");


	String gen = request.getParameter("gen");


       try
                {	  

Connection conn_obj1=DBConnection.get();
pre_st=conn_obj1.prepareStatement("INSERT INTO signup(uid,name,lname,pass_word,email,tele,city,zip,gen,addr)VALUES(?,?,?,?,?,?,?,?,?,?)");
			//////////////////////////////////////////////////

pre_st.setInt(1,id);
pre_st.setString(2,name);
pre_st.setString(3,lname);
pre_st.setString(4,pass_word);
pre_st.setString(5,email);
pre_st.setString(6,tele);
pre_st.setString(7,city);
pre_st.setString(8,zip);
pre_st.setString(9,gen);
pre_st.setString(10,addr);

int s = pre_st.executeUpdate();

response.sendRedirect("registraion.jsp?id="+email);

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
