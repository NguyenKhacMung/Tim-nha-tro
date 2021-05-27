<%@page import="org.apache.struts2.components.Else"%>
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
           
     
            ResultSet rs2;
            String loaitin = null;
            String khuvuc = null;
            String doituong = null;
            String id = (String) session.getAttribute("ID");
            loaitin = (String) session.getAttribute("loaitin");
            khuvuc = (String) session.getAttribute("khuvuc");
            doituong = (String) session.getAttribute("doituong");
            String kt = (String) session.getAttribute("kt");

            ConnectDBClass con = new ConnectDBClass();

            if (kt == null)
            {
                rs2 = con.chonDuLieuTuDTB("SELECT * FROM `phong` WHERE `trangthai`='1 ' ORDER BY id DESC");
            } 
            else
            {
                //if(loaitin!=null)
                    //rs2 = con.chonDuLieuTuDTB("SELECT * FROM `phong` WHERE `loaitin` LIKE '%" + loaitin + "%'");
                //else if(khuvuc!=null)
                    rs2 = con.chonDuLieuTuDTB("SELECT * FROM `phong` WHERE `khuvuc` LIKE '%" + khuvuc + "%' and `trangthai`='1 '");
                ///else if(doituong!=null)
                    //rs2 = con.chonDuLieuTuDTB("SELECT * FROM `phong` WHERE `doituong` LIKE '%" + doituong + "%'");
                   //else
                    //rs2 = con.chonDuLieuTuDTB("SELECT * FROM `phong` ORDER BY id DESC");
            }
            


        %>
    </head>
    <body>

        <div class="background" id="top">
            <!-- First menu -->

            <%@include file="topbar.jsp" %>
            <form action="tim" method="post">
                <div class="search-box desktop">
                    <div class="container">
                        <p>Tìm kiếm phòng trọ</p>
                        <div class="row">
                            <%//                        if(tieuchi2 != "")
            //                        {
            //                        if(tieuchi2.equals("loaitin"))
            //                            loaitin2 = "checked";
            //                        if(tieuchi2.equals("khuvuc"))
            //                            khuvuc2 = "checked";
            //                        
            //                        };
                            %>
                            <div class="form-group">
                                <!--                        <input type="radio" name="tieuchi" value="loaitin" > Loại tin
                                                        <input type="radio" name="tieuchi" value="diachi" > Khu vực
                                                        <input type="radio" name="tieuchi" value="giatien" > Mức giá
                                                        <input type="radio" name="tieuchi" value="doituong" > Đối tượng
                                                        <input type="radio" name="tieuchi" value="dientich" > Diện tích-->

                            </div>
<!--                            <div class="col-sm-3 loaitin">
                                <select name="loaitin">
                                    <option value="">-- Chọn Loại Tin --</option>
                                    <option value="Phòng trọ">Phòng trọ</option>
                                    <option value="Nhà nguyên căn">Nhà nguyên căn</option>
                                    <option value="Tìm bạn ở ghép">Tìm bạn ở ghép</option>
                                </select>
                            </div>-->

                            <div class="col-sm-3 tinhthanh">
                                <select name="khuvuc">
                                    <option value="">-- Chọn Khu vực --</option>
                                    <option value="Ngô Mây">Ngô Mây</option>
                                    <option value="Nguyễn Văn Cừ">Nguyễn Văn Cừ</option>
                                    <option value="Quang Trung">Quang Trung</option>
                                </select>
                            </div>
                            <!--                <div class="col-sm-3 mucgia">
                                                <select>
                                                    <option>--  --</option>
                                                    <option>0 - 1.000.000</option>
                                                    <option>1.000.000 - 3.000.000</option>
                                                    <option> >3.000.000</option>
                                                </select>
                                                
                                            </div>-->

<!--                            <div class="col-sm-3 dientich">
                                <select name="doituong">
                                    <option value="">-- Chọn Đối tượng --</option>
                                    <option value="Nam">Nam</option>
                                    <option value="Nữ">Nữ</option>
                                </select>

                            </div>-->

                            <div class="col-sm-2">
                                <a href="filter.html" style="color: #fff;">
                                    <button type="submit">Tìm Kiếm</button>
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </form>

        </div>

        <div class="container filter desktop">
            <!--BLOCK LEFT-->
            <div class="block-left">
                <div class="header">
                    <span>Cho thuê nhà trọ, phòng trọ tại Quy Nhơn</span>

                </div>
                <% int i = 0;
                    while (rs2.next()) {
                        i++;%>
                <div class="row">
                    <div class="row-header">
                        <a class="title"><%=rs2.getString(3)%></a>
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

                <% };

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
