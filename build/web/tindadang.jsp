<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.ntp.ConnectDBClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/filter.css">
        <link rel="stylesheet" href="css/dangtin.css">
        <link rel="shortcut icon" href="img/favicon.ico"/>
        <title>Cho thuê phòng trọ, nhà trọ, tìm phòng trọ</title>
        <%String ss = "";
            ss = (String) session.getAttribute("tendangnhap");
            ConnectDBClass con = new ConnectDBClass();

            ResultSet rs = con.chonDuLieuTuDTB("SELECT * FROM `dangnhap` WHERE `tendangnhap` = '" + ss + "'");

        %>
    </head>
    <body>

        <div class="background" id="top">
            <!-- First menu -->

            <%@include file="topbar.jsp" %>


        </div>

        <div class="container filter desktop">
            <!--BLOCK LEFT-->
            <div class="block-left">
                <div class="header">
                    <h1>Tin đã đăng</h1>

                </div>

                <%   if (rs.next()) {

                   
                            ResultSet rs2 = null;
                        rs2 = con.chonDuLieuTuDTB("SELECT * FROM `phong` WHERE `uid`='" + rs.getString(1) + "'ORDER BY ngay DESC");                      
                        int i = 0;
                        while (rs2.next()) {
                            i++;
                %>
                <div class="row">
                    <div class="row-header">
                         <a class="title" ><p style="font-weight: 600;"><%=rs2.getString(3)%></p></a>
                        <span class="date">Ngày đăng: <%=rs2.getString(13)%></span>
                    </div>
                    <div class="col-sm-3">
                        <div class="anh">
                            <img src="images/<%=rs2.getString(4)%>">

                        </div>
                    </div>
                           
                    <div class="col-sm-6">
                        <p class="mota"><%=rs2.getString(12)%>
                        </p>

                        <p class="khuvuc">Địa chỉ: <b><%=rs2.getString(5)%></b></p>
                        <label class="status">Phòng trống</label>


                    </div>
                    <div class="col-sm-3">
                        <p class="gia">Giá: <%=rs2.getString(6)%></p>
                        <p class="dientich">Diện tích: <%=rs2.getString(7)%>m²</p>
                        <p>Đối tượng: <%=rs2.getString(11)%></p>
                        <p>Email: <%=rs2.getString(9)%></p>
                        <p>Sdt: <%=rs2.getString(8)%></p>
                        <div class="button">
                            <label class="save active"><a href="page.jsp?id=<%=rs2.getString(1)%>" class="chitiet">Chi tiết</a></label>

                        </div>
                    </div>
                </div>

                <% }};

                %>


            </div>

        </div>


        <!-- Promotion trang web -->

        <%@include file="Promotion.jsp" %>
        <!-- Footer -->
        <div>
            <%@include file="container.jsp" %>
        </div>
        <!-- HẾT Footer -->

        <!-- Back to top -->
        <div class="backtotop">
            <a href="#top">
                <img src="img/backtotop.png" class="img-responsive">
            </a>
        </div>



        <script src="js/jquery-3.2.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
