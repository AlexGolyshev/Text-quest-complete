package com.quest;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CaneCheckServlet", value = "/caneCheck")
public class CaneCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        boolean caneCheck = (boolean) session.getAttribute("cane");

        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");
        if (caneCheck) {
            out.println("/letter.jsp");
        } else {
               out.println("/fail.jsp");
        }
        out.flush();
        out.close();
    }
}