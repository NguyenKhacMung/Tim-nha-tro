/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;
import java.io.File;
import org.apache.commons.io.FileUtils;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author DELL
 */
public class DangTin extends ActionSupport {
    private String uid;
    private String tieude;
    private String diachi;
    private String giatien;
    private String dientich;
    private String sdt;
    private String email;
    private String loaitin;
    private String doituong;
    private String chitiet;
    private String khuvuc;
     private File image;
    private String imageContentType; //thuộc tính tự sinh ra khi upload file
    private String imageFileName; //thuộc tính tự sinh ra khi upload file
    private String savePath; //đường dẫn lưu vào thư mục, đường dẫn tuyệt đối
    private String databasePath; //đường dẫn lưu vào database

    public File getImage() {
        return image;
    }

    public void setImage(File image) {
        this.image = image;
    }

    public String getImageContentType() {
        return imageContentType;
    }

    public void setImageContentType(String imageContentType) {
        this.imageContentType = imageContentType;
    }

    public String getImageFileName() {
        return imageFileName;
    }

    public void setImageFileName(String imageFileName) {
        this.imageFileName = imageFileName;
    }

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    public String getDatabasePath() {
        return databasePath;
    }

    public void setDatabasePath(String databasePath) {
        this.databasePath = databasePath;
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

    public String getLoaitin() {
        return loaitin;
    }

    public void setLoaitin(String loaitin) {
        this.loaitin = loaitin;
    }

    public String getDoituong() {
        return doituong;
    }

    public void setDoituong(String doituong) {
        this.doituong = doituong;
    }

    public String getChitiet() {
        return chitiet;
    }

    public void setChitiet(String chitiet) {
        this.chitiet = chitiet;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getKhuvuc() {
        return khuvuc;
    }

    public void setKhuvuc(String khuvuc) {
        this.khuvuc = khuvuc;
    }


   
    
    public DangTin() {
    }

    
    public String execute() throws Exception
    {
         savePath = "C:\\Users\\DELL\\Downloads\\nhatro\\nhatro\\web\\images\\";
        databasePath = "images\\";
        
        File saveFile = new File(savePath, imageFileName);
        FileUtils.copyFile(image, saveFile);
        
        String databaseFileName = imageFileName;
       
        ConnectDBClass conn = new ConnectDBClass();
        String sql;

         sql = "INSERT INTO `phong` (`uid`, `tieude`, `anh`,`diachi`, `giatien`, `dientich`, `sdt`, `email`, `loaitin`, `doituong`, `chitiet`, `khuvuc`, `trangthai`) VALUES ('"+uid+"', '"+tieude+"','"+databaseFileName+"','"+diachi+"','"+giatien+"','"+dientich+"','"+sdt+"','"+email+"','"+loaitin+"','"+doituong+"','"+chitiet+"', '"+khuvuc+"', '0')";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
    }
    
}
