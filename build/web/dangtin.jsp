
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
        <link rel="stylesheet" href="css/dangtin.css">
        <link rel="shortcut icon" href="img/favicon.ico"/>
        <title>Cho thuê phòng trọ, nhà trọ, tìm phòng trọ</title>
        <%
            String ss = null;

            ss = (String) session.getAttribute("tendangnhap");

            String ten = null;
            ConnectDBClass con = new ConnectDBClass();
            ResultSet rs = con.chonDuLieuTuDTB("SELECT * FROM `dangnhap` WHERE `tendangnhap` = '" + ss + "'");

            if (rs.next()) {

                ten = rs.getString(1);
            };

        %>
    </head>

    <body>
        <div class="background" id="top">
            <!-- First menu -->
            <%@include file="topbar.jsp" %>
        </div>
        <!-- HẾT Background -->

        <div class="wrap-dangtin">
            <div class="container">
                <p class="title-header">đăng tin</p>

                <!-- ĐĂNG TIN-DESKTOP -->
                <form action="RegisterStd" method="POST" enctype="multipart/form-data">
                    <div class="dangtin desktop">
                        <div class="row" style="padding-top: 3rem;">
                            <p>Tiêu đề tin:</p>
                            <textarea rows="2" required="required" name="tieude"
                                      placeholder="Nhập tiêu đề (VD: nhà tôi cho thuê phòng trọ (cc mini) tại số 336, đường Nguyễn Thái Học, TP Quy Nhơn)"></textarea>
                        </div>

                        <div class="row">
                            <p>Địa chỉ:</p>
                            <textarea rows="1" required="required" name="diachi" placeholder="Nhập địa chỉ"></textarea>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <p>Giá tiền:</p>
                                <textarea rows="1" required="required" name="giatien" placeholder="Nhập giá tiền"></textarea>
                            </div>

                            <div class="col-sm-4">
                                <p>Diện tích</p>
                                <textarea rows="1" required="required" name="dientich" placeholder="Diện tích"></textarea>
                            </div>

                            <div class="col-sm-4">
                                <p>Số điện thoại liên hệ:</p>
                                <textarea rows="1" required="required" name="sdt" placeholder="Nhập số điện thoại"></textarea>
                            </div>

                          


                            <div class="col-sm-4">
                                <p>Loại tin:</p>
                                <select name="loaitin">
                                    <option>-- Chọn Loại Tin --</option>
                                    <option value="Phòng trọ">Phòng trọ</option>
                                    <option value="Nhà nguyên căn">Nhà nguyên căn</option>
                                    <option value="Tìm bạn ở ghép">Tìm bạn ở ghép</option>
                                </select>
                            </div>
                            <div class="col-sm-4">
                                <p>Khu vực:</p>
                                <select name="khuvuc">
                                    <option>-- Chọn Khu vực --</option>
                                    <option value="Ngô Mây">Ngô Mây</option>
                                    <option value="Nguyễn Văn Cừ">Nguyễn Văn Cừ</option>
                                    <option value="Quang Trung">Quang Trung</option>
                                </select>
                            </div>
                            <div class="col-sm-4">
                                <p>Đối tượng cho thuê:</p>
                                <select name="doituong">
                                    <option>-- Chọn Nam/Nữ --</option>
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>
                            </div>
                              <div class="col-sm-4">
                                <p>Email liên hệ:</p>
                                <textarea rows="1" required="required" name="email" placeholder="Nhập Email"></textarea>
                            </div>

                        </div>

                        <div class="row" style="padding-bottom: 3rem;">


                            <table>
                                <tr>
                                    <td>
                                        <label>Hình ảnh: </label>

                                        <input type="file" name="image"/><br>

                                    </td>
                                </tr>
                            </table>

                            <p>Thông tin chi tiết:</p>
                            <textarea rows="10" name="chitiet"></textarea>
                            <button name ="uid" value="<%=rs.getString(1)%>"> Đăng tin</button>
                        </div>
                    </div>
                </form>
                <!-- HẾT ĐĂNG TIN-DESKTOP -->

            </div>
        </div>


        <div class="backtotop">
            <a href="#top">
                <img src="img/backtotop.png" class="img-responsive">
            </a>
        </div>

        <script src="js/jquery-3.2.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
