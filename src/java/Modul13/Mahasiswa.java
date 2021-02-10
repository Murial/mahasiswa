package Modul13;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author ASUS
 */
public class Mahasiswa {

    private String nim;
    private String nama_mhs;
    private String jurusan;
    private String alamat;

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }
    
    public String getNama_mhs(){
        return nama_mhs;
    }
    
    public void setNama_mhs(String nama_mhs){
        this.nama_mhs = nama_mhs;
    }
    
    public String getJurusan(){
        return jurusan;
    }
    
    public void setJurusan(String jurusan){
        this.jurusan = jurusan;
    }
    
    public String getAlamat(){
        return alamat;
    }
    
    public void setAlamat(String alamat){
        this.alamat = alamat;
    }
}
