/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

/**
 *
 * @author DELL
 */
public class duyet {
    private String idd;

    public String getIdd() {
        return idd;
    }

    public void setIdd(String idd) {
        this.idd = idd;
    }


    
    
    public duyet() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        
        String sql;

         sql = "UPDATE `phong` SET `trangthai`=1 WHERE `ID`='"+idd+"'";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
    }
}
