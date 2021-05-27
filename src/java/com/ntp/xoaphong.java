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
public class xoaphong {
     private String idx;

    public String getIdx() {
        return idx;
    }

    public void setIdx(String idx) {
        this.idx = idx;
    }

 
    
    public xoaphong() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        
        String sql;
        sql = "DELETE FROM `phong` WHERE `uid` = '"+idx+"'";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
    }
    
    
}
