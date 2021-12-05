package com.ute.sandaugia.beans;

public class loai {
    private int id;
    private String ten;
    private int idDanhMuc;

    public loai() {
    }

    public loai(int id, String ten, int idDanhMuc) {
        this.id = id;
        this.ten = ten;
        this.idDanhMuc = idDanhMuc;
    }

    public int getId() {
        return id;
    }

    public String getTen() {
        return ten;
    }

    public int getIdDanhMuc() {
        return idDanhMuc;
    }
}
