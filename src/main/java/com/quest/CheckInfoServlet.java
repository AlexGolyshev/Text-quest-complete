package com.quest;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CheckInfoServlet", value = "/checkInfo")
public class CheckInfoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        boolean infoCheck = (boolean) session.getAttribute("info");

        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");
        if (infoCheck) {
            out.println("/dagger.jsp");
        } else {
            out.println("/miss.jsp");
        }
        out.flush();
        out.close();
    }
}