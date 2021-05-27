<%-- 
    Document   : page
    Created on : Jan 14, 2021, 12:00:09 PM
    Author     : Admin
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
        <link rel="stylesheet" href="css/detail.css">
     
        <link rel="stylesheet" href="css/dangtin.css">
        <link rel="shortcut icon" href="img/favicon.ico"/>
        <title>Cho thuê phòng trọ, nhà trọ, tìm phòng trọ</title>
        <%String ss = "";
            ss = (String) session.getAttribute("tendangnhap");
            ConnectDBClass con = new ConnectDBClass();
            String id = request.getParameter("id");

            ResultSet rs2 = null;
            if (id != null) {
                rs2 = con.chonDuLieuTuDTB("SELECT * FROM `phong` WHERE `id`='" + id + "'");

            };
        %>
    </head>

    <body>
        <div class="background" id="top">
            <%@include file="topbar.jsp" %>
        </div>
        <!-- HẾT Background -->


        <!-- DETAIL-DESKTOP -->
        <div class="container detail desktop">
            <!--BLOCK LEFT-->
            <br>
           
            <% 
                if (rs2.next()) {
                    String ten = null;
                    String uid =null;
                    ResultSet rs = null;
                    rs = con.chonDuLieuTuDTB("SELECT * FROM `dangnhap` WHERE `uid`='" + rs2.getString(2) + "'");
                    if (rs.next()) {
                        ten = rs.getString(2);
                        
                    };
            %>
            <h3><p style="font-weight: 600;"><%=rs2.getString(3)%></p></h3>
            <div class="block-left">
                <div class="row header">
                    <div class="col-sm-7">
                        <div class="anh">
                            <img class="slide-anh-desktop" src="images/<%=rs2.getString(4)%>">
                           
                        </div>
                        <div class="button">
                            <button class="w3-button w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                            <button class="w3-button w3-display-right" onclick="plusDivs(+1)">&#10095;</button>
                        </div>
                    </div>

                    <div class="col-sm-5">
                        <p class="gia"><i class="fa fa-money"></i> Giá: <%=rs2.getString(6)%> /tháng</p>
                        <p class="dientich"><i class="fa fa-arrows-alt"></i> Diện tích: <%=rs2.getString(7)%>m²</p>
  <p class="diachi"><i class="fa fa-map-marker"></i> Khu vực: <%=rs2.getString(14)%></p>
                        <p class="doituong"><i class="fa fa-group"></i> Đối tượng: <%=rs2.getString(11)%></p>
                        <p class="diachi"><i class="fa fa-map-marker"></i> Địa chỉ: <%=rs2.getString(5)%></p>
                        <p class="nguoidang"><i class="fa fa-user-circle"></i> Người đăng: <%=ten%></p>
                        <p class="email"><i class="fa fa-envelope"></i> Email: <%=rs2.getString(9)%></p>
                        <p class="sodienthoai"><i class="fa fa-phone" name="<%=rs2.getString(1)%>"></i> Số điện thoại: <%=rs2.getString(8)%></p>
                        <p class="date"><i class="fa fa-calendar" name="<%=rs.getString(1)%>"></i> Ngày đăng: <%=rs2.getString(13)%></p>
                        
                    </div>
                </div>

                <div class="row content">


                    <div class="noidung">
                        <p class="title">Thông tin chi tiết</p>
                        <p><%=rs2.getString(12)%>.</p>


                        <b>Liên hệ: <%=rs2.getString(8)%></b>
                    </div>


                </div>
            </div>
            <% };


            %>


        </div>

        <%@include file="Promotion.jsp" %>
        <!-- Footer -->
        <div>
            <%@include file="container.jsp" %>
        </div>

        <!-- Back to top -->
        <div class="backtotop">
            <a href="#top">
                <img src="img/backtotop.png" class="img-responsive">
            </a>
        </div>


        <!-- HẾT Modal -->
        <script src="js/jquery-3.2.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/detail.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
