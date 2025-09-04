<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 9/4/2025
  Time: 7:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="fit.iuh.se.ltwww_java_04092025_tuan03_dangnguyentienphat.entity.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result submit</title>
</head>
<body>

<%
    Student student = new Student();
    student = (Student) request.getAttribute("student");
    out.println(
            "First name: " + student.getFirstName() +
                    "<br/> Last name: " + student.getLastName() +
                    "<br/> Email: " + student.getEmail() +
                    "<br/> Gender: " + student.getGender() +
                    "<br/> Birthday: " + student.getDateOfBirth()
    );
%>

</body>
</html>