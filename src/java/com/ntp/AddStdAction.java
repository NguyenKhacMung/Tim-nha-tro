/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;



/**
 *
 * @author Administrator
 */
public class AddStdAction {
    private String tieude, diachi, giatien , dientich , sdt, email , chitiet  ;
 String uid;
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getGiatien() {
        return giatien;
    }

    public void setGiatien(String giatien) {
        this.giatien = giatien;
    }

    public String getDientich() {
        return dientich;
    }

    public void setDientich(String dientich) {
        this.dientich = dientich;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getChitiet() {
        return chitiet;
    }

    public void setChitiet(String chitiet) {
        this.chitiet = chitiet;
    }

  
    
    
    public AddStdAction() {
    }
    
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
      
        
        String sql;
        //sql = "INSERT INTO `phong` (`IDUser`, `FullName`, `gender`, `passWord`, `role`, `Email`, `address`, `avatar`, `phone`) VALUES ('"+id+"', '"+name+"', '"+gender+"', '123456', 'Student', '"+email+"', '"+address+"', NULL, '"+phone+"')";
        
        //if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        //return "F";
        
        
    }
    

}
