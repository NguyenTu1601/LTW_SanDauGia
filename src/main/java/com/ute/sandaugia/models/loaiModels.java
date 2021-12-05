package com.ute.sandaugia.models;

import com.ute.sandaugia.beans.loai;
import com.ute.sandaugia.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class loaiModels {
    public static List<loai> findAll() {
        final String query = "select * from loai";

        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(query).executeAndFetch(loai.class);
        }
    }
}
