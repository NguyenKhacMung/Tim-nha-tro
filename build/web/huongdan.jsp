<%-- 
    Document   : huongdan
    Created on : Jan 1, 2021, 11:15:57 PM
    Author     : MungNguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/huongdan.css">
    <link rel="shortcut icon" href="img/favicon.ico"/>
    <title>Cho thuê phòng trọ, nhà trọ, tìm phòng trọ</title>
</head>

<body>
<div class="background" id="top">
    <!-- First menu -->
    <div class="first-menu desktop">
        <div class="container">
            <label><a href="index.html">Phongtro.com</a></label>
            <div class="item"><a href="#"><span>Tin đã lưu</span></a></div>
            <div class="item"><a href="huongdan.html"><span>Hướng dẫn</span></a></div>
            <div class="item"><a href="dangtin.html">Đăng tin</a></div>
            <div class="item"><a href="#" data-toggle="modal" data-target="#sign-in"><span
                    class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></div>
            <div class="item" style="background: rgba(100, 149, 237, 0.7);"><a href="#" data-toggle="modal"
                                                                               data-target="#sign-up"><span
                    class="glyphicon glyphicon-user"></span> Đăng ký</a></div>
        </div>
    </div>

    <div class="first-menu mobile">
        <div class="container">
            <div class="navbar-header">
                <label><a href="index.html">Phongtro.com</a></label>
                <div class="navbar-toggle">
                    <i class="fa fa-bars" data-toggle="collapse" data-target="#first-menu"></i>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="first-menu">
                <ul class="nav navbar-nav">
                    <li><a href="#" data-toggle="modal" data-target="#sign-in"><span
                            class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#sign-up"><span
                            class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
                    <li><a href="#"><span>Tin đã lưu<span></a></li>
                    <li><a href="huongdan.html"><span>Hướng dẫn<span></a></li>
                    <li><a href="dangtin.html" style="background: #ffa239;">Đăng tin</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- HẾT First menu -->
</div>
<!-- HẾT Background -->

<div class="wrap-huongdan">
    <div class="container">
        <p class="title-header">hướng dẫn sử dụng</p>
    
    <!-- HƯỚNG DẪN-DESKTOP -->
        <div class="huongdan desktop">
            <div class="row">
                <p class="title">1. người tìm nhà</p>
                <p>+ Các bạn nên đăng ký tài khoản và đăng nhập để có được hiệu quả cao nhất.</p>
                <p>+ Sau khi đăng nhập các bạn có thể tìm kiếm nhà trọ dễ dàng hơn, cũng như có thể tương tác với chủ nhà
                    trọ một cách hiệu quả.</p>
                <p>+ Các bạn có thể dễ dàng tìm người <strong>Share phòng</strong> bằng cách nhấn vào nút <strong>Thuê chung</strong>.</p><img src="img/hd6.jpg" class="img-responsive">
            </div>

            <div class="row">
                <p class="title">Một số ví dụ về trạng thái phòng:</p>
                <div class="vidu">
                    <p>Phòng cần tìm người ở ghép:</p>
                    <img src="img/hd1.jpg" class="img-responsive">
                </div>

                <div class="vidu">
                    <p>Phòng trống chưa cho thuê và <strong>cần tìm người thuê chung:</strong></p>
                    <img src="img/hd2.jpg" class="img-responsive">
                </div>

                <div class="vidu">
                    <p>Phòng trống chưa cho thuê:</p>
                    <img src="img/hd3.jpg" class="img-responsive">
                </div>

                <div class="vidu">
                    <p>Phòng đã cho thuê:</p>
                    <img src="img/hd4.jpg" class="img-responsive">
                </div>
            </div>

            <div class="row" style="padding-bottom: 3rem;">
                <p class="title">2. người cho thuê</p>
                <p>+ Để có thể đăng tin cho thuê nhà các bạn cần đăng ký và đăng nhập tài khoản.</p>
                <p>+ Sau đó các bạn có thể nhấn vào mục <strong>Đăng tin</strong> trên trang web và làm theo hướng dẫn để có
                được một bài đăng tốt nhất.</p>
            </div>
        </div>
    <!-- HẾT HƯỚNG DẪN-DESKTOP -->

    <!-- HƯỚNG DẪN-MOBILE -->
        <div class="huongdan mobile">
            <div class="row">
                <p class="title">1. người tìm nhà</p>
                <p>+ Các bạn nên đăng ký tài khoản và đăng nhập để có được hiệu quả cao nhất.</p>
                <p>+ Sau khi đăng nhập các bạn có thể tìm kiếm nhà trọ dễ dàng hơn, cũng như có thể tương tác với chủ nhà
                    trọ một cách hiệu quả.</p>
                <p>+ Các bạn có thể dễ dàng tìm người <strong>Share phòng</strong> bằng cách nhấn vào nút <strong>Thuê chung</strong>.</p><img src="img/hd6.jpg" class="img-responsive">
            </div>

            <div class="row">
                <p class="title">Một số ví dụ về trạng thái phòng:</p>
                <div class="vidu">
                    <p>Phòng cần tìm người ở ghép:</p>
                    <img src="img/hd1.jpg" class="img-responsive">
                </div>

                <div class="vidu">
                    <p>Phòng trống chưa cho thuê và <strong>cần tìm người thuê chung:</strong></p>
                    <img src="img/hd2.jpg" class="img-responsive">
                </div>

                <div class="vidu">
                    <p>Phòng trống chưa cho thuê:</p>
                    <img src="img/hd3.jpg" class="img-responsive">
                </div>

                <div class="vidu">
                    <p>Phòng đã cho thuê:</p>
                    <img src="img/hd4.jpg" class="img-responsive">
                </div>
            </div>

            <div class="row" style="padding-bottom: 3rem;">
                <p class="title">2. người cho thuê</p>
                <p>+ Để có thể đăng tin cho thuê nhà các bạn cần đăng ký và đăng nhập tài khoản.</p>
                <p>+ Sau đó các bạn có thể nhấn vào mục <strong>Đăng tin</strong> trên trang web và làm theo hướng dẫn để có
                được một bài đăng tốt nhất.</p>
            </div>
        </div>
    <!-- HẾT HƯỚNG DẪN-MOBILE -->
    </div>
</div>

<!-- Footer -->
<div>
    <div class="container footer">
        <div class="row">
            <div class="col-sm-2">
                <label>Phongtro.com</label>
                <p><span>Huy Đậu © 2017</span></p>
            </div>

            <div class="col-sm-6">
                <a href="#" class="gioithieu">giới thiệu</a>
                <a href="#" class="quydinh">quy định</a>
                <a href="#" class="lienhe">liên hệ</a>

                <p>Chúng tôi luôn cố gắng đem lại những thông tin nhanh chóng và chính xác cho mọi người. Rất mong nhận
                    được sự ủng hộ giúp đỡ của mọi người cùng nhau xây dựng một kênh thông tin truyền thông về nhà trọ
                    tốt nhất Việt Nam.</p>
                <p style="text-transform: uppercase;">mọi chi tiết xin liên hệ:</p>
                <p>Email: huydau@gmail.com</p>
                <p>Hỗ trợ đăng tin: <span>0987-654-321</span></p>
            </div>

            <div class="col-sm-4">
                <a href="#">thống kê</a>
                <p><strong>70.000+ </strong>tin bài trên hệ thống, liên tục cập nhật</p>
                <p><strong>300.000+ </strong>khách truy cập.</p>
                <p><strong>2.000.000+ </strong>lượt xem mỗi tháng</p>
            </div>
        </div>
    </div>
</div>
<!-- HẾT Footer -->

<!-- Back to top -->
<div class="backtotop">
    <a href="#top">
        <img src="img/backtotop.png" class="img-responsive">
    </a>
</div>
<!-- HẾT Back to top -->

<!-- Modal -->
<div class="modal fade" id="sign-up" role="dialog">
    <div class="modal-dialog">
        <div class="sign-up">
            <h2>Đăng ký</h2>
            <div class="sign-up-facebook">
                <i class="fa fa-facebook"></i>
                <span>Đăng ký bằng Facebook</span>
            </div>
            <p>Hoặc...</p>

            <form>
                <div>
                    <input class="email" type="Email" placeholder="Email">
                </div>

                <div>
                    <input class="password" id="password-signup" type="password" placeholder="Mật khẩu">
                </div>

                <div style="text-align: left;">
                    <input class="hien-mk" id="hien-mk" type="checkbox">
                    <label for="hien-mk">Hiển thị mật khẩu</label>
                </div>

                <div>
                    <input class="hoten" type="text" placeholder="Họ và tên">
                </div>

                <div>
                    <input class="sodienthoai" type="text" placeholder="Số điện thoại">
                </div>

                <div>
                    <input class="submit" type="submit" value="Đăng ký">
                </div>
                <p>Bằng cách nhấp vào Đăng ký, bạn đã đồng ý với các <a href="#">Quy định</a> của chúng tôi.</p>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="sign-in" role="dialog">
    <div class="modal-dialog">
        <div class="sign-in">
            <h2>Đăng nhập</h2>
            <div class="sign-in-facebook">
                <i class="fa fa-facebook"></i>
                <span>Đăng nhập bằng Facebook</span>
            </div>
            <p>Hoặc...</p>

            <form>
                <div>
                    <input class="email" type="Email" placeholder="Email">
                </div>

                <div>
                    <input class="password" type="password" placeholder="Mật khẩu">
                </div>

                <div style="text-align: left;">
                    <input class="checkbox" id="nho-mk" type="checkbox">
                    <label for="nho-mk">Ghi nhớ mật khẩu</label>
                </div>
                <div>
                    <input class="submit" type="submit" value="Đăng nhập">
                </div>
            </form>
            <p>Bạn chưa có tài khoản? <a href="#" class="taotaikhoan">Tạo tài khoản</a></p>
        </div>
    </div>
</div>
<!-- HẾT Modal -->
<script src="js/jquery-3.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>