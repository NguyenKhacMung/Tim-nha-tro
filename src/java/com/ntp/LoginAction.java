/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Administrator
 */
public class LoginAction {

    private final ConnectDBClass connDB = new ConnectDBClass();
    private String tendangnhap;
    private String matkhau;
    private String tb = null;
    private String uid;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
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

    public String getTb() {
        return tb;
    }

    public void setTb(String tb) {
        this.tb = tb;
    }

    public LoginAction() {
    }

    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();

        HttpSession session = request.getSession();
        tb = null;
        String sql = "SELECT * FROM `dangnhap` WHERE `tendangnhap` = '" + tendangnhap + "' and `matkhau` = '" + matkhau + "'";
        ResultSet rs = connDB.chonDuLieuTuDTB(sql);

        String resultString = null;
        if (rs.next()) {
 session.setAttribute("tendangnhap", tendangnhap);
                String role = rs.getString("tendangnhap");
                if ("admin".equals(role)) {
                    resultString = "A";
                } else {
                    resultString = "T";
                }
               
            } else {
                resultString = "F";
            }
        

        return resultString;

    }

}
