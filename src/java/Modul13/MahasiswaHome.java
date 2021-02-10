package Modul13;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MahasiswaHome {

    public Mahasiswa[] getDaftarMahasiswa() {
        Mahasiswa[] daftarMahasiswa = null;
        Mahasiswa tempMahasiswa = null;
        ArrayList listMahasiswa = new ArrayList();
        String pwd = "";
        String login = "root";
        Connection con = null;
        ResultSet rs = null;
        AksesJdbc db = new AksesJdbc("mahasiswa", login, pwd);
        String sql = "SELECT nim, nama_mhs, jurusan, alamat FROM mahasiswa";
        try {
            con = db.connect();
            String nim = null;
            rs = db.executeQuery(sql);
            while (rs.next()) {
                tempMahasiswa = new Mahasiswa();
                tempMahasiswa.setNim(rs.getString("nim"));
                tempMahasiswa.setNama_mhs(rs.getString("nama_mhs"));
                tempMahasiswa.setJurusan(rs.getString("jurusan"));
                tempMahasiswa.setAlamat(rs.getString("alamat"));
                listMahasiswa.add(tempMahasiswa);
            }
            daftarMahasiswa = new Mahasiswa[listMahasiswa.size()];
            listMahasiswa.toArray(daftarMahasiswa);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                db.disconnect();
                return daftarMahasiswa;
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public Mahasiswa getDataMahasiswabyNim(String nimss) {
        Mahasiswa mhs = null;
        String pwd = "";
        String login = "root";
        Connection con = null;
        ResultSet rs = null;
        AksesJdbc db = new AksesJdbc("mahasiswa", login, pwd);
        String sql = "SELECT nim, nama_mhs, jurusan, alamat FROM mahasiswa WHERE nim='" + nimss + "'";
        try {
            con = db.connect();
            rs = db.executeQuery(sql);
            if (rs.next()) {
                mhs = new Mahasiswa();
                mhs.setNim(rs.getString("nim"));
                mhs.setNama_mhs(rs.getString("nama_mhs"));
                mhs.setJurusan(rs.getString("jurusan"));
                mhs.setAlamat(rs.getString("alamat"));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                db.disconnect();
                return mhs;
            } catch (SQLException e) {
                e.printStackTrace();
                return mhs;
            }
        }
    }

//    ------------- CRUD METHOD START HERE -------------
    
        public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mahasiswa", "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static int save(Mahasiswa m) throws SQLException {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO mahasiswa(Nim, nama_mhs, Jurusan, Alamat) values(?,?,?,?)");
            ps.setString(1, m.getNim());
            ps.setString(2, m.getNama_mhs());
            ps.setString(3, m.getJurusan());
            ps.setString(4, m.getAlamat());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Mahasiswa m) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE mahasiswa set nama_mhs=?, Jurusan=?, Alamat=? WHERE Nim=?");
            ps.setString(1, m.getNama_mhs());
            ps.setString(2, m.getJurusan());
            ps.setString(3, m.getAlamat());
            ps.setString(4, m.getNim());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Mahasiswa m) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM mahasiswa WHERE Nim=?");
            ps.setString(1, m.getNim());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

//    ----------------- CRUD METHOD END HERE -----------------
    
}
