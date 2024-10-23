package servlets;

import org.junit.Test;
import org.mockito.Mockito;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.verify;

public class CaneCheckServletTest {
    @Test
    public void testDoPost() throws Exception {
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        HttpSession session = Mockito.mock(HttpSession.class);

        Mockito.when(request.getSession()).thenReturn(session);

        PrintWriter out = Mockito.mock(PrintWriter.class);
        response.setContentType("text/html");
        Mockito.when(response.getWriter()).thenReturn(out);

        Mockito.when(session.getAttribute("cane")).thenReturn(true);
        boolean cane = (boolean) session.getAttribute("cane");

        if (cane) {
            out.println("/letter.jsp");
        } else {
            out.println("/fail.jsp");
        }


        verify(out).println("/letter.jsp");

        Mockito.when(session.getAttribute("cane")).thenReturn(false);
        cane = (boolean) session.getAttribute("cane");

        if (cane) {
            out.println("/letter.jsp");
        } else {
            out.println("/fail.jsp");
        }

        verify(out).println("/fail.jsp");

        out.flush();
        out.close();
    }
}
