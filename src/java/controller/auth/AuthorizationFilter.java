package controller.auth;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.*;
import model.User;
import java.io.IOException;

@WebFilter(urlPatterns = {"/admin/*", "/doctor/*", "/receptionist/*", "/customer/*"})
public class AuthorizationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization if needed
    }
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);
        
        User user = null;
        if (session != null) {
            user = (User) session.getAttribute("user");
        }
        
        if (user == null) {
            // Nếu chưa đăng nhập, chuyển hướng về login
            res.sendRedirect(req.getContextPath() + "/login.jsp");
            return;
        }
        
        // Kiểm tra role dựa trên URL
        String path = req.getRequestURI().toLowerCase();
        String role = user.getRole().toLowerCase();
        if (path.contains("/admin/") && !role.equals("admin")) {
            res.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied: Admins only");
            return;
        }
        if (path.contains("/doctor/") && !role.equals("doctor")) {
            res.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied: Doctors only");
            return;
        }
        if (path.contains("/receptionist/") && !role.equals("receptionist")) {
            res.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied: Receptionists only");
            return;
        }
        if (path.contains("/customer/") && !role.equals("customer")) {
            res.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied: Customers only");
            return;
        }
        chain.doFilter(request, response);
    }
    
    @Override
    public void destroy() {
        // Cleanup if needed
    }
}
