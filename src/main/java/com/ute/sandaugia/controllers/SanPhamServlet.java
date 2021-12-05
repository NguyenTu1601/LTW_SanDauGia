package com.ute.sandaugia.controllers;

import com.ute.sandaugia.beans.danhmuc;
import com.ute.sandaugia.beans.loai;
import com.ute.sandaugia.models.danhmucModels;
import com.ute.sandaugia.utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SanPhamServlet", value = "/SanPham/*")
public class SanPhamServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/DanhMuc":
                int danhmucID = Integer.parseInt(request.getParameter("id"));
                List<loai> list = danhmucModels.findByDanhMucID(danhmucID);

                //sdff
                request.setAttribute("products", list);
                ServletUtils.forward("/views/vwProduct/ByCat.jsp", request, response);
                break;

            case "/Loai":
                int proID = Integer.parseInt(request.getParameter("id"));
                //Product product = ProductModels.findById(proID);
//                if (product==null) {
//                    ServletUtils.redirect("/Home", request, response);
//                } else {
//                    //request.setAttribute("product", product);
//                    ServletUtils.forward("/views/vwProduct/Detail.jsp", request, response);
//                }

                break;

            default:
                //ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
