package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/favicon.ico\"/>\n");
      out.write("        <title>Đăng nhập</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"sign-in\">\n");
      out.write("                <h2>Đăng nhập</h2><br><br>\n");
      out.write("\n");
      out.write("                <form action=\"login\" method=\"post\">\n");
      out.write("                    <s:property value=\"useridString\"/>\n");
      out.write("                    <div>\n");
      out.write("                        <input class=\"email\" name=\"tendangnhap\" type=\"text\" placeholder=\"Email\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div>\n");
      out.write("                        <input class=\"password\" name=\"matkhau\" type=\"password\" placeholder=\"Mật khẩu\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div style=\"text-align: left;\">\n");
      out.write("                        <input class=\"nho-mk\" id=\"nho-mk\" type=\"checkbox\">\n");
      out.write("                        <label for=\"nho-mk\">Ghi nhớ mật khẩu</label>\n");
      out.write("                    </div>\n");
      out.write("                     \n");
      out.write("                    <div>\n");
      out.write("                        <input class=\"submit\" type=\"submit\" value=\"Đăng nhập\">\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <p>Bạn chưa có tài khoản? <a href=\"register.jsp \"class=\"taotaikhoan\">Tạo tài khoản</a></p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <script src=\"js/jquery-3.2.0.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/script.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
