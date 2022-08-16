<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="listProperty.jsp"></jsp:include>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    属性管理界面 <small>你猜猜我是干嘛的？知道还问</small>
                </h1>
            </div>
            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th>
                        属性id
                    </th>
                    <th>
                        属性名称
                    </th>
                    <th>
                        编辑
                    </th>
                    <th>
                        删除
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${properties}" var="p" varStatus="st">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td><a href="editProperty?id=${p.id}"><button type="button" class="btn btn-default btn-primary">编辑</button></a> </td>
                        <td><a href="deleteProperty?id=${p.id}"><button type="button" class="btn btn-default btn-danger">删除</button></a> </td>

                    </tr>

                </c:forEach>

                </tbody>
            </table>
            <form role="form" action="addProperty">
                <div class="form-group">
                    <label for="name">属性名称:</label>
                    <input type="text" class="form-control" id="name" name="name" />

                    <input  type="hidden" class="form-control" id="cid" name="cid" value="${cid}" />
                </div>
                <button type="submit" class="btn btn-default">增加</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
