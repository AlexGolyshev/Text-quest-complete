package com.quest;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "DaggerCheckServlet", value = "/checkDagger")
public class DaggerCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        boolean daggerCheck = (boolean) session.getAttribute("dagger");

        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");
        if (daggerCheck) {
            out.println("/happyEnd.jsp");
        } else {
            out.println("/reunion.jsp");
        }
        out.flush();
        out.close();
    }
}