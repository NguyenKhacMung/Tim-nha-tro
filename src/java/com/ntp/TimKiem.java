/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.Option;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Admin
 */
public class TimKiem extends ActionSupport
{
    private final ConnectDBClass connDB = new ConnectDBClass();
    private String loaitin;
    private String khuvuc;
    private String doituong;

    public String getLoaitin() {
        return loaitin;
    }

    public void setLoaitin(String loaitin) {
        this.loaitin = loaitin;
    }

    public String getKhuvuc() {
        return khuvuc;
    }

    public void setKhuvuc(String khuvuc) {
        this.khuvuc = khuvuc;
    }

    public String getDoituong() {
        return doituong;
    }

    public void setDoituong(String doituong) {
        this.doituong = doituong;
    }

    public TimKiem() {
    }

    public TimKiem(String loaitin) {
        this.loaitin = loaitin;
    }
    

    public String execute() throws Exception
    {
        HttpServletRequest request = ServletActionContext.getRequest();

        HttpSession session = request.getSession();
        session.setAttribute("loaitin",loaitin);
        session.setAttribute("khuvuc",khuvuc);
        session.setAttribute("doituong",doituong);
        session.setAttribute("kt","yes");

        return "T";
    }
    
}
