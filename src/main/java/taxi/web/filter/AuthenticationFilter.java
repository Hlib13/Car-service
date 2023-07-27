package taxi.web.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class AuthenticationFilter implements Filter {
    private static final List<String> accessibleUrls =
            List.of("/index", "/login", "/drivers/add",
                    "/driver/cars");

    @Override
    public void doFilter(
            ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        Long id = (Long) session.getAttribute("id");
        if (id == null && !accessibleUrls.contains(request.getServletPath())) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        filterChain.doFilter(request, response);
    }
}
