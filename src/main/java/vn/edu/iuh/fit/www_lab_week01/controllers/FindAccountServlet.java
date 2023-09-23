package vn.edu.iuh.fit.www_lab_week01.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.iuh.fit.www_lab_week01.entities.Account;
import vn.edu.iuh.fit.www_lab_week01.repositories.ConnectDB;
import vn.edu.iuh.fit.www_lab_week01.repositories.RoleRepository;

import java.io.IOException;
import java.util.List;

@WebServlet("/findAccount")
public class FindAccountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        RoleRepository roleRepository = new RoleRepository(ConnectDB.getConnection());
        List<Account> list = roleRepository.findRole(id);
        HttpSession session = req.getSession();
        for(Account account : list){
            session.setAttribute("account_id", account.getAccountId());
            session.setAttribute("fullName", account.getFullName());
            session.setAttribute("email", account.getEmail());
            session.setAttribute("phone", account.getPhone());
            session.setAttribute("status", account.getStatus());
            resp.sendRedirect("findRole.jsp");
        }
    }
}
