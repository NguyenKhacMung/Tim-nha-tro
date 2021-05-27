<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="first-menu desktop">
    <div class="container">
        <label><a href="index.jsp">Trang chủ</a></label>

        <%if (ss != null) {%>

        
        <div class="item"><a href="tindadang.jsp"><span> Tin đã đăng</span></a></div>
        <div class="item"><a href="dangtin.jsp"> Đăng tin</a></div>
        <div class="item"><a><span> Hello, <%=ss%></span></a></div>
        <div class="item avatar">
            <div class="dropdown">
                <img src="img/avt2.png" data-toggle="dropdown">
                <ul class="dropdown-menu">
                    <li><a href="./logout">Đăng xuất</a></li>
                </ul>
            </div>
        </div>
        <%} else {%>
        <div class="item"><a href="login.jsp" ><span
                    class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></div>
        <div class="item" style="background: rgba(100, 149, 237, 0.7);"><a href="register.jsp" ><span
                    class="glyphicon glyphicon-user"></span> Đăng ký</a></div>

        <%}%>
    </div> </div>