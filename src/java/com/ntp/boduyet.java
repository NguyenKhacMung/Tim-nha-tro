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
public class boduyet {
    private String idbd;

    public String getIdbd() {
        return idbd;
    }

    public void setIdbd(String idbd) {
        this.idbd = idbd;
    }

  

    
    
    public boduyet() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        
        String sql;

         sql = "UPDATE `phong` SET `trangthai`=0 WHERE `ID`='"+idbd+"'";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
    }
    
}
