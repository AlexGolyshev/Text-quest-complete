package com.quest;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "RevolverCheckServlet", value = "/revolverCheck")
public class RevolverCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        boolean revolverCheck = (boolean) session.getAttribute("revolver");

        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");
        if (revolverCheck) {
            out.println("/victory.jsp");
        } else {
            out.println("/demise.jsp");
        }
        out.flush();
        out.close();
    }
}