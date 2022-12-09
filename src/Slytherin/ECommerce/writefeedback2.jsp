<%@ page import="java.sql.*,com.ecommerce.db.*, java.util.Date, java.text.*"%>


<%

String id = request.getParameter("id");
double rating = Double.parseDouble(request.getParameter("rating"));
String review = request.getParameter("review");
String user=(String)session.getAttribute("useremail");
String name=(String)session.getAttribute("name");
Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("dd/MM/yyyy");
      String date=ft.format(dNow);

	
	Connection ccc=DBConnection.get();
	PreparedStatement pre_st=ccc.prepareStatement("insert into feedback(prodid,rating,review,userid,date_,uname) values (?,?,?,?,?,?)");
	pre_st.setString(1, id);
	pre_st.setDouble(2, rating);
	pre_st.setString(3, review);
	pre_st.setString(4, user);
	pre_st.setString(5, date);
	pre_st.setString(6, name);
	pre_st.executeUpdate();

response.sendRedirect("writefeedback.jsp?id="+id+"&&m=succ");

%>