<%@ tag pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="danhmucWithDetails" scope="request" type="java.util.List<com.ute.sandaugia.beans.danhmuc>"/>
<jsp:useBean id="loaiWithDetails" scope="request" type="java.util.List<com.ute.sandaugia.beans.loai>"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>San dau gia</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .navbar{
            background-color: black;
            width: 80%;
            margin: auto;
            height: 2.7em !important;
        }
        .nav-tren{
            background-color: black;
            height: 2.7em !important;
        }
        .nav-link{
            color: white;
        }
        .form-control-sm{
            border-radius: 10px;
        }
        .nav-duoi{
            background-color: #fcd001;
        }
        .danhmuc{
            align-items: center;
            margin: auto;
            display: flex;
            width: 80%;
            justify-content: space-between;
            padding: 0;
            box-sizing: border-box;
        }
        .dropbtn-danhmuc {
            background-color: transparent;
            color: black;
            border: none;
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding-right: 10px;
            padding-left: 10px;
        }
        .dropdown-danhmuc :hover{
            color: black;
        }
        .dropdown-danhmuc {
            position: relative;
            width: 25%;
            display: inline-block;
            align-items: stretch;

        }

        .dropdown-content-danhmuc {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content-danhmuc a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content-danhmuc a:hover {
            background-color: #ddd;

        }

        .dropdown-danhmuc:hover .dropdown-content-danhmuc {
            display: block;
        }

        .dropdown-danhmuc:hover .dropbtn-danhmuc {
            background-color: white;
            text-decoration: none;

        }
        .textDrop{
            margin-left: 0;
        }
        .fa-caret-down{
            margin: auto;
            margin-right: 0px;
        }
        .fanav{
            margin: auto;
            margin-right: 0px;
        }
        .body{
            width: 80%;
            margin: auto;
        }
    </style>

</head>
<body>
<div class="nav-tren">
    <nav class="navbar navbar-expand-sm">
        <a class="navbar-brand" href="#">
            <i class="fa fa-home fa-2x" aria-hidden="true"></i>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-1-">
                <li class="nav-item dropdown">
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control-sm mr-sm-2 " type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success btn-sm" type="submit">Search</button>
            </form>

        </div>
        <ul class="navbar-nav mr-0">
            <li class="nav-item ">
                <a class="nav-link" href="">Đăng Ký</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="">Đăng Nhập</a>
            </li>
        </ul>
    </nav>
</div>
<div class="nav-duoi">
    <ul class="danhmuc">
        <c:forEach items="${danhmucWithDetails}" var="c">

            <li class="dropdown-danhmuc">
                <a href="#" class="dropbtn-danhmuc">
                    <div>
<%--                        <i class="fa fa-microchip fanav" aria-hidden="true"></i>--%>
                        <span class="textDrop">${c.ten}</span>
                    </div>
                    <i class="fa fa-caret-down"></i>
                </a>
                <div class="dropdown-content-danhmuc">
                    <c:forEach items="${loaiWithDetails}" var="d">
                        <c:if test="${d.idDanhMuc == c.id}">
                            <a href="#">${d.ten}</a>
                        </c:if>
                    </c:forEach>

                </div>
            </li>
            </a>
        </c:forEach>
    </ul>
</div>
<div class="body">
    <jsp:doBody/>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
</body>
</html>