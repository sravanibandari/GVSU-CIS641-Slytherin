<%@ include file="user_base.jsp"%>
<%@ page import="java.sql.*,com.ecommerce.db.*, com.ecommerce.util.* "%>

<h3>Reviews
</h3>
<h4>
	   <div class="bs-docs-example">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Sno</th>
                  <th>Review</th>
                  <th>Rating </th>
                  <th>Date</th>
                  <th>User</th>
				  </tr>
              </thead>

<%
int posi=0; int nega=0; int nuea=0;
String key=null;String ss=null;
String line=null;
String res=null;
String[] words=null;
String[] ws=null;

	Connection conn_obj1=DBConnection.get();
	 stmt = conn_obj1.createStatement();
	 int c=0;
	  sss = "select * from feedback where prodid='"+request.getParameter("id")+"' ";
	 res_set=stmt.executeQuery(sss);
	while(res_set.next()){


	ss=res_set.getString(4);

%>
              <tbody>
                <tr>
                  <td><%=++c%></td>
                  <td><%=res_set.getString(4)%></td>
                  <td><%=res_set.getString(3)%></td>
                  <td><%=res_set.getString(6)%></td>
                  <td><%=res_set.getString(5)%></td>
				  
                </tr>
<%
	}
%>	
			
			</table>

	


	</div>		
	<br/><br/><br/><br/><br/>
<%@ include file="lower_base.jsp"%>