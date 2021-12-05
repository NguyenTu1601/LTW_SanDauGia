package com.ute.sandaugia.beans;

public class danhmuc {
    private int id;
    private String ten;

    public danhmuc() {
    }

    public danhmuc(int id, String ten) {
        this.id = id;
        this.ten = ten;
    }

    public int getId() {
        return id;
    }

    public String getTen() {
        return ten;
    }
}
