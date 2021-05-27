<%-- 
    Document   : admin
    Created on : Jan 18, 2021, 3:54:17 PM
    Author     : DELL
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>

<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.ntp.ConnectDBClass"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/quanlydangtin.css">
        <link rel="shortcut icon" href="img/favicon.ico"/>
        <title>Cho thuê phòng trọ, nhà trọ, tìm phòng trọ</title>
        <%String ss = "";
            ss = (String) session.getAttribute("tendangnhap");
            ConnectDBClass con = new ConnectDBClass();

            ResultSet rs2 = con.chonDuLieuTuDTB("SELECT * FROM `phong` ORDER BY id DESC");
        %>
    </head>

    <body>
        <div class="background" id="top">
            <!-- First menu -->
            <div class="first-menu desktop">
                <div class="container">
                    <label><a href="admin.jsp">Admin</a></label>
                    <%if ("admin".equals(ss)) {%>
                    <div class="item"><a href="admin.jsp"><span>Quản lý tin</span></a></div>
                    <div class="item"><a href="qluser.jsp"><span>Quản lý tài khoản</span></a></div>


                    <div class="item"><a href="./logout"><span> Đăng xuất</span></a></div>
                    <%} else {%><div class="item"><a href="login.jsp" ><span
                                class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></div>
                            <%}%>
                </div>
            </div>
        </div>


    </div>
    <!-- HẾT Background -->


    <!-- QUẢN LÝ ĐĂNG TIN -->
    <div class="wrap-quanlydangtin">
        <div class="container">
            <p class="title-header">quản lý đăng tin</p>
            <%if ("admin".equals(ss)) {%>
            <div class="quanlydangtin desktop">
                <% int i = 0;
                    while (rs2.next()) {
                        i++;
                        String ten = null;
                        ResultSet rs = null;
                        rs = con.chonDuLieuTuDTB("SELECT * FROM `dangnhap` WHERE `uid`='" + rs2.getString(2) + "'");
                        if (rs.next()) {
                            ten = rs.getString(2);
                        };%>
                <div class="row">
                    <div class="row-header">
                        <a class="title" ><p style="font-weight: 600;"><%=rs2.getString(3)%></p></a>
                    </div>

                    <div class="col-sm-6">
                        <img src="images/<%=rs2.getString(4)%>">
                    </div>

                    <div class="col-sm-6">
                        <div class="content">
                            <p class="nguoidang"> <b>Người đăng:</b> <%=ten%></p>
                            <p class="loaitin"><b>Loại tin:</b> <%=rs2.getString(10)%></p>
                            <p class="khu vực"><b>Khu vực:</b> <%=rs2.getString(14)%></p>
                            <p class="khu vực"><b>Địa chỉ:</b> <%=rs2.getString(5)%></p>
                            <p class="gia"><b>Giá:</b> <%=rs2.getString(6)%>/tháng</p>
                            <p class="dientich"><b>Diện tích:</b> <%=rs2.getString(7)%>m²</p>
                            <p class="doituong"><b>Đối tượng:</b> <%=rs2.getString(11)%></p>
                            <p class="ngaydang"><b>Ngày đăng:</b> <%=rs2.getString(13)%></p>
                            <%
                                if ("1".equals(rs2.getString(15))) {
                            %>
                            <form action="boduyet">
                                <p class="accepted"><span>đã duyệt tin</span></p>
                                <button name ="idbd" value="<%=rs2.getString(1)%>"><i class="fa fa-pencil-square-o"></i> Bỏ duyệt</button>
                            </form>
                            <%  } else {
                            %> <form action="duyet">
                                <p class="pending"><span>đang chờ duyệt</span></p>
                                <button name ="idd" value="<%=rs2.getString(1)%>"><i class="fa fa-pencil-square-o"></i> Duyệt tin</button>
                            </form>
                            <%
                                }
                            %> 
                            <form action="xoaphong">                      
                                <button name ="idx" value="<%=rs2.getString(1)%>"><i class="fa fa-trash-o"></i> Xóa</button> </form>
                        </div>
                    </div>
                </div>
                <% }
                    ;
                %>

            </div>
            <%} else {%><h3 align="center">Vui lòng đăng nhập</h3>
            <%}%>
        </div>
    </div>
    <!-- HẾT QUẢN LÝ ĐĂNG TIN -->

    <!-- Back to top -->
    <div class="backtotop">
        <a href="#top">
            <img src="img/backtotop.png" class="img-responsive">
        </a>
    </div>

    <script src="js/jquery-3.2.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>