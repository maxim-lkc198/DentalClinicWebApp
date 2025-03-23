package controller.auth;

import dal.UserDAO;
import dal.CustomerDAO;
import model.User;
import model.Customer;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SignupServlet extends HttpServlet {
    
    private UserDAO userDAO = new UserDAO();
    private CustomerDAO customerDAO = new CustomerDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/signup.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String dobStr = request.getParameter("dateOfBirth");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phonenumber");
        String password = request.getParameter("password");
        
        // Basic validation
        if(fullname == null || dobStr == null || gender == null || phone == null || password == null ||
           fullname.isEmpty() || dobStr.isEmpty() || gender.isEmpty() || phone.isEmpty() || password.isEmpty()) {
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }
        
        // Create a User record with role "Customer"
        User user = new User();
        user.setUsername(phone);  // Using phone as username for simplicity
        user.setPasswordHash(password); // In production, hash the password
        user.setFullName(fullname);
        user.setPhoneNumber(phone);
        user.setRole("Customer");
        
        boolean userInserted = userDAO.insertUser(user);
        if (!userInserted) {
            request.setAttribute("errorMessage", "Signup failed. Username or phone number might already exist.");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }
        
        // Create a Customer record
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date dob = sdf.parse(dobStr);
            Customer customer = new Customer();
            customer.setFullName(fullname);
            customer.setDateOfBirth(dob);
            customer.setGender(gender);
            customer.setPhoneNumber(phone);
            boolean customerInserted = customerDAO.insertCustomer(customer);
            if (customerInserted) {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            } else {
                request.setAttribute("errorMessage", "Signup failed while creating customer details.");
                request.getRequestDispatcher("/signup.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Invalid date format.");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
        }
    }
}
