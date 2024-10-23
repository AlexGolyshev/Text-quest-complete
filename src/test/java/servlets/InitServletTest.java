package servlets;

import org.junit.Test;
import org.mockito.Mockito;
import org.mockito.Spy;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.mockito.Mockito.verify;

public class InitServletTest {
    @Test
    public void testDoGet() throws Exception {
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        HttpSession session = Mockito.mock(HttpSession.class);

        Mockito.when(request.getSession()).thenReturn(session);
        session.setAttribute("cane", false);
        verify(session).setAttribute("cane", false);

        session.setAttribute("info", false);
        verify(session).setAttribute("info", false);

        session.setAttribute("revolver", false);
        verify(session).setAttribute("revolver", false);

        session.setAttribute("dagger", false);
        verify(session).setAttribute("dagger", false);

        response.sendRedirect("/index.jsp");
        verify(response).sendRedirect("/index.jsp");
    }
}
