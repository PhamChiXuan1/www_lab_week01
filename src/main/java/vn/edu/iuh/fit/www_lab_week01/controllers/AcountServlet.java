package vn.edu.iuh.fit.www_lab_week01.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.iuh.fit.www_lab_week01.entities.Account;
import vn.edu.iuh.fit.www_lab_week01.repositories.AccountRepository;
import vn.edu.iuh.fit.www_lab_week01.repositories.ConnectDB;
import vn.edu.iuh.fit.www_lab_week01.repositories.RoleRepository;

import java.io.IOException;

@WebServlet("/login")
public class AcountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RoleRepository roleRepository = new RoleRepository(ConnectDB.getConnection());
        String roleName = roleRepository.getRole();
        String userName = req.getParameter("username");
        String passWord = req.getParameter("password");
        AccountRepository accountRepository = new AccountRepository(ConnectDB.getConnection());
        Account account = accountRepository.login(userName, passWord);
        HttpSession session = req.getSession();
        RequestDispatcher requestDispatcher = null;
        if(userName.equals("")|| passWord.equals("")){
            req.setAttribute("status","Invalid Email or Password");
            requestDispatcher = req.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(req, resp);
        }
        if(account!=null){
            session.setAttribute("account_id", account.getAccountId());
            session.setAttribute("fullName", account.getFullName());
            session.setAttribute("phone", account.getPhone());
            session.setAttribute("status", account.getStatus());
            requestDispatcher = req.getRequestDispatcher("dashboard.jsp");
        }else {
            req.setAttribute("status2", "Wrong Email or Password");
            requestDispatcher = req.getRequestDispatcher("index.jsp");
        }
        requestDispatcher.forward(req, resp);
    }
}
