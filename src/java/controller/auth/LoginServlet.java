package controller.auth;

import dal.UserDAO;
import model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    
    private UserDAO userDAO = new UserDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Chuyển tiếp đến trang login.jsp
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy thông tin đăng nhập và role từ form
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String roleFromForm = request.getParameter("role");
        
        // Lấy user từ DB
        User user = userDAO.getUserByUsername(username);
        if (user != null && user.getPasswordHash().equals(password)) { // so sánh trực tiếp cho demo
            // Kiểm tra role đã chọn có trùng với record không
            if (!roleFromForm.equalsIgnoreCase(user.getRole())) {
                request.setAttribute("errorMessage", "Incorrect role selection for this account.");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
                return;
            }
            // Lưu user vào session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            // Redirect đến trang dashboard theo role
            String role = user.getRole();
            if ("Admin".equalsIgnoreCase(role)) {
                response.sendRedirect(request.getContextPath() + "/admin/dashboard.jsp");
            } else if ("Doctor".equalsIgnoreCase(role)) {
                response.sendRedirect(request.getContextPath() + "/doctor/dashboard.jsp");
            } else if ("Receptionist".equalsIgnoreCase(role)) {
                response.sendRedirect(request.getContextPath() + "/receptionist/dashboard.jsp");
            } else if ("Customer".equalsIgnoreCase(role)) {
                response.sendRedirect(request.getContextPath() + "/customer/dashboard.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            }
        } else {
            // Thông báo lỗi nếu đăng nhập thất bại
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
