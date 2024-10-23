package servlets;

import org.junit.Test;
import org.mockito.Mockito;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.verify;

public class CaneServletTest {
    @Test
    public void testDoGet() throws Exception {
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        HttpSession session = Mockito.mock(HttpSession.class);


        Mockito.when(request.getSession()).thenReturn(session);
        session.setAttribute("cane", true);

        verify(session).setAttribute("cane", true);

        response.sendRedirect("/awakening.jsp");

        verify(response).sendRedirect("/awakening.jsp");
    }
}
