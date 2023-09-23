package vn.edu.iuh.fit.www_lab_week01.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.iuh.fit.www_lab_week01.repositories.AccountRepository;
import vn.edu.iuh.fit.www_lab_week01.repositories.ConnectDB;

import java.io.IOException;

@WebServlet("/deleteAccount")
public class DeleteAccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        AccountRepository accountRepository = new AccountRepository(ConnectDB.getConnection());
        boolean deleteAcc = accountRepository.deleteAccount(id);

        HttpSession session = req.getSession();
        if(deleteAcc){
            session.setAttribute("success3","Delete Complete");
            resp.sendRedirect("dashboard.jsp");
        }else{
            session.setAttribute("errorDelete","Delete failed");
            resp.sendRedirect("dashboard.jsp");
        }
    }
}
