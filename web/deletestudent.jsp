<%-- 
    Document   : deletestudent
    Created on : Jan, 2022, 9:58:18 PM
    Author     : Benedict
--%>
<jsp:useBean id="deleteBean" scope="page" class="Bean.Operations" />
<jsp:setProperty name="deleteBean" property="id"/>
<%
    if (deleteBean.delete() == 1) {
        out.print("Deleted Successfully!");
    } else if (deleteBean.delete() == 2) {
        out.print("The Id doesn't exist");
    } else {
        out.print("There was an error");
    }

%>
