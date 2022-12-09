<%@ page  import="java.sql.*" import="com.ecommerce.db.*" %>

<%@ page import="java.io.*"%>

<% Blob image = null;

Connection conn_obj1 = null;

byte[ ] imgData = null ;

Statement stmt = null;

ResultSet res_set = null;
String id=request.getParameter("id");
try {



conn_obj1 = DBConnection.get();

stmt = conn_obj1.createStatement();
String sql="select pic from item where item = '"+id+"'";
System.out.println(sql);
res_set = stmt.executeQuery(sql);

if (res_set.next()) {

image = res_set.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} else {

return;

}

// display the image

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {

res_set.close();

stmt.close();

conn_obj1.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

%> 