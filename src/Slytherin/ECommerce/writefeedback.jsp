
<%
    String message=request.getParameter("m");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Thank you for your support.')</script>");
	}
 %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<style>

.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:1em;
    padding:0 .1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: '★ ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}
</style>
</head><BR><BR><BR>
<form method="post" action="writefeedback2.jsp">
<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
	<table ALIGN="center">
  <tr>
	<td><fieldset class="rating" >
    <legend bgcolor=""><font size="" color="#0e68b1"><h4>Submit Your Rating</FONT></h4></legend>
	<input type="radio" id="star5" required name="rating" value="5" /><label for="star5" title="Rocks!">5 stars</label>
    <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Pretty good">4 stars</label>
    <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Just Good">3 stars</label>
    <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Bad">2 stars</label>
    <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Very Bad">1 star</label>
</fieldset>
</td>
  </tr>
  <tr><td><fieldset class="rating">
   <legend><font size="" color="#0e68b1"><h4>Submit Review:</FONT></h4></legend>
    <textarea name="review" rows="4" cols="40"></textarea>
</fieldset>
<tr><td><input type="submit" value="Submit"> 

  </table>  
</form>