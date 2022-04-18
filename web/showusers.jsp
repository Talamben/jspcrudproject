<%-- 
    Document   : deletestudent
    Created on : Jan, 2022, 9:58:18 PM
    Author     : Benedict
--%>
<%@page import="Bean.Operations"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.Student"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    ArrayList<Student> students = Operations.fetchAll();
    request.setAttribute("students", students);
%>
<table class="ui single line selectable table">
    <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>ID</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody class="tbody">
        <c:forEach items="${students}" var="student">
            <tr><td>${student.getFname()}</td>
                <td>${student.getLname()}</td>
                <td>${student.getId()}</td>
                <td>
                    <button class="ui red button delete">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
