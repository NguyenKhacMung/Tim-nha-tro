/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Admin
 */
public class DangKyAction {

    private final ConnectDBClass connDB = new ConnectDBClass();
    private String tendangnhap;
    private String matkhau;
    private String matkhaunl;
  
    public DangKyAction() {
    }

    public String getTendangnhap() {
        return tendangnhap;
    }

    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getMatkhaunl() {
        return matkhaunl;
    }

    public void setMatkhaunl(String matkhaunl) {
        this.matkhaunl = matkhaunl;
    }

    public DangKyAction(String tendangnhap, String matkhau, String matkhaunl) {
        this.tendangnhap = tendangnhap;
        this.matkhau = matkhau;
        this.matkhaunl = matkhaunl;
    }


    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();

        HttpSession session = request.getSession();

        String sql = "SELECT * FROM `dangnhap`";
        ResultSet rs = connDB.chonDuLieuTuDTB(sql);
        String resultString = null;

        if (rs.next()) {
//
            if (tendangnhap.equals(rs.getString(2))) {
                session.setAttribute("tb2", "Tên đăng nhập đã có người sử dụng");
                resultString = "F";
            } else if (!(matkhaunl.equals(matkhau))) {
                session.setAttribute("tb2", "Mật khẩu nhập lại không chính xác");
                resultString = "F";
            } else {
                ConnectDBClass conn = new ConnectDBClass();
                sql = "INSERT INTO `dangnhap` (`tendangnhap`, `matkhau`) VALUES ('" + tendangnhap + "', '" + matkhau + "')";
                conn.thucThiCauLenhSQL(sql);
                session.setAttribute("tb2", "Đăng ký thành công");
                resultString = "F";
            }

        }
        return resultString;
    }
}
