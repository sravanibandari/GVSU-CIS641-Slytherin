

</head>
<%@ page   import="com.ecommerce.db.*" %>
<%@ page import="java.io.*,java.sql.*"%>
<%
///
String pid=(String)session.getAttribute("pid");

	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
//
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
File f=new File(saveFile);
FileInputStream fis=new FileInputStream(saveFile);
//
// System.out.println(ff.getName());
         // open input stream test.txt for reading purpose.
		 
String pname=ff.getName().toString();
//session.setAttribute("pname",pname);

try{
Connection conn_obj1 = DBConnection.get();
//b1=new Blob(b);
PreparedStatement pst=conn_obj1.prepareStatement("update item set pic=? where item='"+pid+"' ");
pst.setBinaryStream(1,(InputStream)fis,(int)(f.length()));
int i=pst.executeUpdate();
if(i==1)
	{
 //out.println("update");
response.sendRedirect("addprod3.jsp?id=level-4");

	}

}catch(Exception e){
	e.printStackTrace();
}
		 
}
%>
