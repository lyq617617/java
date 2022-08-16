package com.iweb.servlet;

import com.iweb.dao.CategoryDAO;
import com.iweb.dao.PropertyDAO;
import com.iweb.pojo.Category;
import com.iweb.pojo.Property;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author LIU
 * @date 2022/8/16 16:11
 * @description 类的描述和介绍
 */
@WebServlet(urlPatterns = {"/addProperty"})
public class PropertyAddServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        int cid=Integer.parseInt(req.getParameter("cid"));
        Property property=new Property();
        property.setCategory(new CategoryDAO().get(cid));
        property.setName(name);
        new PropertyDAO().add(property);
        resp.sendRedirect("/listProperty?id="+cid);
    }
}
