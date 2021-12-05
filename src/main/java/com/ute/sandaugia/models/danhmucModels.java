package com.ute.sandaugia.models;

import com.ute.sandaugia.beans.danhmuc;
import com.ute.sandaugia.beans.loai;
import com.ute.sandaugia.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class danhmucModels {
    public static List<danhmuc> findAll() {
        final String query = "select * from danhmuc";

        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(query).executeAndFetch(danhmuc.class);
        }
    }
    public static List<loai> findByDanhMucID(int idDanhMuc) {
        final String query = "select * from loai where idDanhMuc = :idDanhMuc";

        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(query).addParameter("idDanhMuc", idDanhMuc).executeAndFetch(loai.class);
        }
    }
}
