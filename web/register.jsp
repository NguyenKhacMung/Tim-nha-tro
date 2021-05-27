
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
        <title>Đăng ký</title>
        <%
            String tb2 = "";
            tb2 = (String) session.getAttribute("tb2");
        %>
    </head>
    <body>
        <div class="modal-dialog">
            <div class="sign-up">
                <h2>Đăng ký</h2><br>
                <%  if(tb2 != null){%>
                <label for="tb" style="color: red"><%=tb2%></label>
                <%}%>
                <form action="dangky" method="post">
                    <div>
                        <input class="hoten" type="text" placeholder="Tên đăng nhập" name="tendangnhap" required>
                    </div>
                    <div>
                        <input class="password" id="password-signup" type="password" placeholder="Mật khẩu" name="matkhau" required>
                    </div>
                    <div>
                        <input class="password" id="password-signup" type="password" placeholder="Nhập lại mật khẩu" name="matkhaunl" required>
                    </div>

                    <div>
                        <input class="submit" type="submit" value="Đăng ký">
                    </div>
                    <p>Bạn đã có tài khoản? <a href="login.jsp "class="dangnhap">Đăng nhập</a></p>
                </form>
            </div>
        </div>
        <script src="js/jquery-3.2.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
