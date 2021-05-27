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
            ResultSet rs2 = con.chonDuLieuTuDTB("SELECT * FROM `dangnhap` ORDER BY uid DESC");
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
        <!-- HẾT Background -->
        <!-- QUẢN LÝ ĐĂNG TIN -->
        <div class="wrap-quanlydangtin">
            <div class="container">
                <p class="title-header">quản lý tài khoản</p>
                <%if ("admin".equals(ss)) {%>
                <div class="quanlydangtin desktop">

                    <div class="row">
                        <section class="col-lg-12">

                            <div class="box box-info">

                                <div class="box-body p">
                                    <form action="deleteStudent">
                                        <table class="table">
                                            <tbody><tr>
                                                    <th>STT</th>
                                                    <th>Tên đăng nhập</th>
                                                    <th>Password</th>
                                                    <th>Xóa</th>
                                                </tr>
                                            <tbody>
                                                <%int i = 1;
                                                    while (rs2.next()) {
                                                %>
                                                <tr>
                                                    <td><p><%=i++%></p></td>
                                                    <td><p><%=rs2.getString(2)%></p></td>
                                                    <td><p><%=rs2.getString(3)%></p></td>

                                                    <td>

                                                        <button name ="idStd" value="<%=rs2.getString(1)%>" class="btn btn-block btn-danger btn-xs" ><i class="fa fa-trash-o"></i></button>

                                                    </td>
                                                </tr>     <% };

                                                %>


                                            </tbody></table>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>


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