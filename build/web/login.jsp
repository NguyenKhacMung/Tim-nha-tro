
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" href="img/favicon.ico"/>
        <title>Đăng nhập</title>
    
    </head>
    <body>

        <div class="modal-dialog">
            <div class="sign-in">
                <h2>Đăng nhập</h2><br><br>
                <div class="error-msg">
                    <s:actionerror />
             
                <form action="login" method="post">
                    <s:property value="tb"/>
                    <div>
                        <input class="email" name="tendangnhap" type="text" placeholder="Tên đăng nhập" >
                    </div>

                    <div>
                        <input class="password" name="matkhau" type="password" placeholder="Mật khẩu" required>
                    </div>

                    <div>
                        <input class="submit" type="submit" value="Đăng nhập">
                    </div>
                </form>
                <p>Bạn chưa có tài khoản? <a href="register.jsp "class="taotaikhoan">Tạo tài khoản</a></p>
            </div>

        </div>
        <script src="js/jquery-3.2.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
